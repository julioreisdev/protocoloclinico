-- =========================================================
-- 03_admin.sql — Usuário admin padrão
-- Rodar por último.
-- =========================================================

insert into usuarios (usuario, senha, papel, expira_em, ativo)
values ('admin', '035AHRSw?', 'admin', null, true)
on conflict (usuario) do update set
  senha     = excluded.senha,
  papel     = excluded.papel,
  expira_em = excluded.expira_em,
  ativo     = excluded.ativo;
