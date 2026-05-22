-- =========================================================
-- 01_schema.sql — Estrutura do banco
-- Banco: Supabase (PostgreSQL)
-- Rodar este arquivo PRIMEIRO, depois 02_dados.sql, depois 03_admin.sql
-- =========================================================

-- ---------- Extensões ----------
create extension if not exists "pgcrypto";   -- gen_random_uuid()

-- ---------- Limpeza idempotente (cuidado em produção) ----------
-- Descomente as linhas abaixo se quiser recomeçar do zero:
-- drop table if exists exames        cascade;
-- drop table if exists protocolos    cascade;
-- drop table if exists categorias    cascade;
-- drop table if exists usuarios      cascade;

-- =========================================================
-- USUÁRIOS (login simples — sem criptografia, por escolha do projeto)
-- =========================================================
create table if not exists usuarios (
  id           uuid primary key default gen_random_uuid(),
  usuario      text not null unique,
  senha        text not null,                            -- texto puro (a pedido)
  papel        text not null check (papel in ('admin','usuario')),
  expira_em    timestamptz,                              -- null = sem expiração
  ativo        boolean not null default true,            -- pode ser desativado manualmente
  criado_em    timestamptz not null default now(),
  atualizado_em timestamptz not null default now()
);

create index if not exists idx_usuarios_usuario on usuarios (usuario);

-- View prática: usuário é válido quando ativo = true e (expira_em é null OU expira_em > agora)
create or replace view v_usuarios_validos as
  select id, usuario, papel, expira_em, ativo, criado_em, atualizado_em
  from usuarios
  where ativo = true
    and (expira_em is null or expira_em > now());

-- =========================================================
-- CATEGORIAS (especialidades clínicas)
-- =========================================================
create table if not exists categorias (
  id        serial primary key,
  nome      text not null unique,
  ordem     int  not null default 0
);

-- =========================================================
-- PROTOCOLOS clínicos
-- =========================================================
create table if not exists protocolos (
  id            uuid primary key default gen_random_uuid(),
  chave         text not null unique,                       -- ex.: "pre_natal"
  categoria_id  int  not null references categorias(id) on delete restrict,
  titulo        text not null,
  cid           text not null default '',
  texto         text not null default '',                   -- corpo do protocolo
  criado_em     timestamptz not null default now(),
  atualizado_em timestamptz not null default now()
);

create index if not exists idx_protocolos_categoria on protocolos (categoria_id);
create index if not exists idx_protocolos_titulo    on protocolos (titulo);

-- =========================================================
-- EXAMES por protocolo
-- =========================================================
create table if not exists exames (
  id              uuid primary key default gen_random_uuid(),
  protocolo_id    uuid not null references protocolos(id) on delete cascade,
  nome            text not null,
  atencao_basica  boolean not null default true,            -- true = AB, false = Referência
  ordem           int not null default 0
);

create index if not exists idx_exames_protocolo on exames (protocolo_id);

-- =========================================================
-- Trigger para manter "atualizado_em"
-- =========================================================
create or replace function trg_set_updated_at()
returns trigger language plpgsql as $$
begin
  new.atualizado_em = now();
  return new;
end$$;

drop trigger if exists set_updated_usuarios on usuarios;
create trigger set_updated_usuarios
  before update on usuarios
  for each row execute function trg_set_updated_at();

drop trigger if exists set_updated_protocolos on protocolos;
create trigger set_updated_protocolos
  before update on protocolos
  for each row execute function trg_set_updated_at();

-- =========================================================
-- RLS (Row Level Security)
-- Como o login é feito por tabela própria (não usa Supabase Auth),
-- a chave anon vai ler/escrever via API. Aqui liberamos tudo via anon,
-- e a proteção fica na CAMADA do app (login na tela admin).
-- Se quiser endurecer no futuro, troque pelas policies comentadas.
-- =========================================================
alter table usuarios   enable row level security;
alter table categorias enable row level security;
alter table protocolos enable row level security;
alter table exames     enable row level security;

-- Policies abertas (modelo "API estática"). Substitua depois se quiser.
drop policy if exists p_all_usuarios   on usuarios;
drop policy if exists p_all_categorias on categorias;
drop policy if exists p_all_protocolos on protocolos;
drop policy if exists p_all_exames     on exames;

create policy p_all_usuarios   on usuarios   for all using (true) with check (true);
create policy p_all_categorias on categorias for all using (true) with check (true);
create policy p_all_protocolos on protocolos for all using (true) with check (true);
create policy p_all_exames     on exames     for all using (true) with check (true);
