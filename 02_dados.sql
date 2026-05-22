-- =========================================================
-- 02_dados.sql — Categorias, Protocolos e Exames
-- Rode DEPOIS de 01_schema.sql
-- =========================================================

-- Categorias (na ordem em que aparecem nos protocolos)
INSERT INTO categorias (nome, ordem) VALUES
  ('Obstetrícia', 1),
  ('Ginecologia/IST', 2),
  ('Endocrinologia', 3),
  ('Saúde Mental', 4),
  ('Cardiologia', 5),
  ('Nefrologia', 6),
  ('Reumatologia', 7),
  ('Infectologia', 8),
  ('Pneumologia', 9),
  ('Pediatria', 10),
  ('ORL/Audiologia', 11),
  ('Dermatologia', 12)
ON CONFLICT (nome) DO NOTHING;

-- Protocolos
INSERT INTO protocolos (chave, categoria_id, titulo, cid, texto) VALUES
  ('pre_natal', (SELECT id FROM categorias WHERE nome = 'Obstetrícia'), 'Pré-Natal de Baixo Risco', 'Z34', 'PRE- NATAL DE BAIXO RISCO
CID: Z34
CALENDÁRIO DE CONSULTAS
MÍNIMO: 6 consultas intercaladas entre médico (a) e enfermeiro (a);
- Ate 28 semana- mensalmente . ( FREBASGO: (ATÉ 32 SEMANAS)
- 28 – 36 semana- quinzenalmente
- 36-41 semana- semanalmente
OBSERVAÇÃO!
Segundo o Ministério da Saúde, o pré-natal deve incluir pelo menos 6
consultas. A distribuição recomendada é: uma avaliação no primeiro trimestre,
duas consultas durante o segundo trimestre e três encontros no terceiro trimestre.
Para gestantes classificadas como alto risco, a periodicidade das consultas
deve ser ajustada de forma individualizada, conforme a condição clínica e a
evolução de cada caso.
É importante destacar que não há “alta” do pré-natal. A gestante
permanece em acompanhamento até o momento da internação obstétrica, que
deve ocorrer por indicação médica—incluindo quando a gestação atinge 41
semanas, calculadas preferencialmente com base na data da última menstruação
e, quando possível, confirmadas por ultrassonografia do primeiro trimestre.
A partir de 40 semanas, a gestante precisa de avaliações mais frequentes,
com atenção ao volume de líquido amniótico, ao mobilograma fetal e à
cardiotocografia para monitorar o bem-estar do feto.
ROTEIRO PARA 1ª CONSULTA
• Identificação da paciente: nome, idade, cor, profissão, estado civil, procedência
• História obstétrica atual: data da última menstruação (DUM), cálculo da data
provável do parto, idade gestacional, sinais e sintomas da gravidez em curso
ROTEIRO PARA CONSULTAS SUBSEQÜENTES
• Revisão da ficha pré-natal e anamnese atual
• Cálculo e anotação da idade gestacional
• Ganho de peso durante a gestação
• Controle da PA e peso. Exame gineco-obstétrico: medida da altura uterina,
ausculta dos batimentos cardíaco fetais (bcf)
• Interpretação dos exames laboratoriais. Controle do calendário de vacinação
• Revisão dos fatores de risco.
• Registrar os dados de avaliação no cartão da gestante
EXAMES LABORATORIAIS NA ASSISTÊNCIA PRÉ-NATAL
HEMOGRAMA
• Hb ≥ 11 g/dL: ausência de anemia. Repetir na 24ª semana e após 32 semanas.
• Hb > 8 g/dL e < 11 g/dL: anemia leve/moderada → tratar e repetir em 4–8
semanas. Suplementar ferro 120–240 mg/dia (3–6 cp sulfato ferroso).
• Hb < 8 g/dL: investigar anemias carenciais (ferropriva, megaloblástica),
hemolíticas, talassemia e anemia falciforme → solicitar perfil de ferro, eletroforese
de Hb e teste de falcização.
• Hb < 10 g/dL no 3º trimestre: preferir ferro injetável.
TIPAGEM SANGUÍNEA
• Rh positivo: estudo encerrado.
• Rh negativo: pesquisar DU.
• Rh(–)/DU(–) com parceiro Rh(+) ou desconhecido → solicitar Coombs indireto (1ª
consulta e repetir por volta de 24 semanas).
EAS (Exame de urina)
• Proteinúria em traços sem sinais de pré-eclâmpsia: repetir em 15 dias.
• Proteinúria + HAS ou proteinúria maciça: seguir protocolo de pré-eclâmpsia.
• Piúria (>10 piócitos/campo): solicitar urocultura.
• Hematúria + bacteriúria: urocultura + US de vias urinárias.
• Hematúria isolada: excluir sangramento vaginal, solicitar US vias urinárias +
urocultura.
• Cilindros: avaliação com nefrologista.
UROCULTURA
• Solicitar na primeira consulta.
• Se negativa e antecedente de ITU recorrente: repetir mensalmente ou na 24ª
semana.
• Se bacteriúria assintomática: tratar, repetir urocultura pós-tratamento e repetir
mensalmente.
GLICEMIA DE JEJUM
• < 92 mg/dL → realizar curva glicêmica 75 g (entre 24–28 semanas).
• 92–125 mg/dL → diabetes gestacional.
• ≥ 126 mg/dL → overt diabetes / DM2.
TESTE RÁPIDO PARA SÍFILIS
• Solicitar na 1ª consulta; repetir com 24 semanas, após 32 semanas e na
internação.
• Positivo → confirmar com FTA-Abs e testar parceiro.
• Se não for possível confirmar, tratar como sífilis tardia latente.
VDRL
• Realizar na 1ª consulta.
• Positivo → confirmar com FTA-Abs e tratar mulher/casal.
HbsAg
• Reagente → encaminhar infectologia; RN deve receber vacina + imunoglobulina.
• Negativo com risco → vacinar e repetir próximo ao parto.
SOROLOGIA PARA HIV 1/2
• Solicitar na primeira consulta.
…'),
  ('dm_gestacao', (SELECT id FROM categorias WHERE nome = 'Obstetrícia'), 'Diabetes Mellitus na Gestação', 'O24', 'DIABETES MELLITUS NA GESTAÇÃO
CID: O24
1. Conceito
O diabetes mellitus na gestação engloba duas situações clínicas distintas: o
diabetes mellitus previamente existente à gestação (diabetes tipo 1 ou tipo 2) e a
hiperglicemia inicialmente detectada durante a gravidez. Esta última pode
corresponder ao diabetes mellitus gestacional (DMG), quando a hiperglicemia
surge durante a gestação sem preencher critérios diagnósticos de diabetes fora da
gravidez, ou ao diabetes mellitus diagnosticado na gestação (overt diabetes),
quando os níveis glicêmicos atingem valores compatíveis com diabetes na
população geral .
O diabetes gestacional é a alteração metabólica mais comum da gravidez e,
quando não diagnosticado e tratado adequadamente, associa-se a importantes
complicações maternas e fetais.
2.Diagnóstico
Glicemia de jejum >= 126 mg/dl ou
Hemoglobina glicada (HbA1c) >= 6,5%.
Na primeira consulta de pré-natal os valores acima provavelmente indicam
diabetes pré-gestacional, não diagnosticado previamente
3. SEGUIMENTO PRÉ-NATAL
ABORDAGEM INICIAL
Além da rotina pré-natal:
• HbA1c
• Exame de fundo de olho
• ECG e Ecocardiograma
• Creatinina, pesquisa de microalbuminúria ou proteinúria de 24 horas.
• Urocultura.
• TSH e T4 livre
Gestantes com diabetes tipo 1 ou tipo 2 devem utilizar aspirina em baixa dose
(100 a 150 mg por dia), iniciando entre 12 e 16 semanas de gravidez, pois isso
diminui o risco de desenvolver pré-eclâmpsia.
SEGUIMENTO
Semanal ou a cada duas semanas para avaliação do controle glicêmico.
Além da rotina:
• Microalbuminúria ou proteinúria de 24 horas, creatinina e urocultura: com 20,
28 e 34 semanas
AVALIAÇÃO FETAL
• Ultrassonografia morfológica de 1º e 2º trimestre.
• Ecocardiografia fetal entre 24 e 28 semanas
• Avaliação do crescimento fetal e líquido amniótico a cada 4 semanas (2° e 3°
trimestre). Em caso de suspeita de restrição de crescimento fetal ou feto grande
para a idade gestacional, realizar avaliação a cada 15 dias.
• Vitalidade fetal: doppler de artérias uterinas e artérias umbilicais na 26ª
semana (basal). Após individualizar caso a caso
CONDUTA
Dieta + atividade física
Monitorizar glicemias diárias
Insulinoterapia
Hipoglicemiante Oral:
Os efeitos a longo prazo são desconhecidos. FDA não liberou para uso rotineiro na
gestação. O Ministério da saúde não recomenda o uso na prática clínica, até que
mais estudos possam confirmar sua segurança. A Glibenclamida está associada a
piores desfechos perinatais quando comparada com a Metformina e Insulina.
Devem ser utilizados apenas em casos refratários e individualizados, como terapia
adjuvante. Metformina como primeira escolha.'),
  ('hipertensao_gestacao', (SELECT id FROM categorias WHERE nome = 'Obstetrícia'), 'Síndromes Hipertensivas na Gestação', 'O13/O14/O10', 'SINDROMES HIPERTENSIVAS NA GESTAÇÃO
CID 10:
O13 para Hipertensão Gestacional (sem proteína significativa)
O14 para Pré-eclâmpsia (com proteína)
O10 para Hipertensão Pré-existente (que se complica na gravidez)
1. Conceito
As síndromes hipertensivas da gestação englobam um grupo de doenças
caracterizadas pelo aumento da pressão arterial durante a gravidez, representando
uma das principais causas de morbimortalidade materna e perinatal no Brasil e no
mundo. São condições de evolução dinâmica, podendo surgir isoladamente ou
progredir para formas mais graves, o que exige vigilância contínua durante o prénatal, parto e puerpério . Considera-se hipertensão arterial na gestação quando a
pressão arterial sistólica é ≥ 140 mmHg e/ou a pressão arterial diastólica é ≥ 90
mmHg, confirmada em pelo menos duas aferições, respeitando os intervalos
recomendados.
2. Classificação
As síndromes hipertensivas da gestação são classificadas de acordo com o
momento de surgimento da hipertensão e a presença de lesões associadas.
A hipertensão arterial crônica é aquela presente antes da gestação ou
diagnosticada antes de 20 semanas, persistindo além de 12 semanas após o parto.
A hipertensão gestacional caracteriza-se pelo surgimento de hipertensão após 20
semanas de gestação em mulher previamente normotensa, sem proteinúria ou
disfunção de órgãos-alvo, com normalização da pressão arterial no puerpério.
A pré-eclâmpsia é uma doença multissistêmica específica da gestação,
caracterizada por hipertensão após 20 semanas associada à proteinúria e/ou
disfunção de órgãos-alvo maternos ou disfunção uteroplacentária.
A eclâmpsia corresponde à ocorrência de convulsões tônico-clônicas
generalizadas em gestante com pré-eclâmpsia, na ausência de outras causas
neurológicas.
A síndrome HELLP é uma forma grave da pré-eclâmpsia, caracterizada por
hemólise,
elevação
das
enzimas
hepáticas
e
plaquetopenia.
A pré-eclâmpsia sobreposta à hipertensão arterial crônica ocorre quando
gestantes previamente hipertensas desenvolvem proteinúria, piora dos níveis
pressóricos, necessidade de intensificação do tratamento ou sinais de disfunção
orgânica após 20 semanas
3. Diagnóstico clínico
O diagnóstico das síndromes hipertensivas baseia-se na aferição adequada da
pressão arterial associada à investigação de sinais e sintomas sugestivos de
gravidade. Muitas gestantes são inicialmente assintomáticas, sendo fundamental
a vigilância ativa no pré-natal.
A pré-eclâmpsia pode ser diagnosticada mesmo na ausência de proteinúria, desde
que haja hipertensão associada à disfunção de órgãos-alvo maternos ou disfunção
uteroplacentária, conforme critérios atuais adotados por sociedades
internacionais e nacionais
4. Tratamento
O tratamento depende da forma clínica, da gravidade do quadro e da idade
gestacional.
Nas formas não graves, o manejo inclui repouso relativo, controle rigoroso da
pressão arterial, acompanhamento laboratorial periódico e monitorização fetal. A
prática de exercícios físicos é contraindicada na pré-eclâmpsia.
O tratamento anti-hipertensivo oral está indicado quando a pressão arterial é ≥ 140
x 90 mmHg, sendo a metildopa a droga de primeira escolha. Podem ser associados
bloqueadores de canal de cálcio ou betabloqueadores seletivos, conforme
necessidade e resposta terapêutica.
Nas formas graves, caracterizadas por pressão arterial ≥ 160 x 110 mmHg ou sinais
de deterioração clínica ou laboratorial, a gestante deve ser internada
imediatamente. O sulfato de magnésio é indicado para prevenção e tratamento
das convulsões, e o controle da crise hipertensiva deve ser feito com antihipertensivos de ação rápida.
O parto é o único tratamento definitivo da pré-eclâmpsia e deve ser indicado
conforme a gravidade materna e fetal, independentemente da idade gestacional,
quando houver risco iminente à vida da mãe ou do feto
5. Puerpério
O puerpério é um período crítico, pois as complicações podem surgir ou se agravar
após o parto. A pressão arterial deve ser monitorada cuidadosamente, e o
tratamen…'),
  ('sifilis_gestacao', (SELECT id FROM categorias WHERE nome = 'Obstetrícia'), 'Sífilis na Gestação', 'O98.1', 'SIFÍLIS NA GESTAÇÃO
CID-10: O98.1
1. Conceito
A sífilis é uma infecção sexualmente transmissível, sistêmica e de evolução
crônica, causada pela bactéria Treponema pallidum. Na gestação, assume
especial relevância devido ao elevado risco de transmissão vertical, podendo
resultar em abortamento, óbito fetal, prematuridade, baixo peso ao nascer e sífilis
congênita, mesmo em gestantes assintomáticas. Trata-se de doença de notificação
compulsória e considerada evento sentinela da qualidade da assistência pré-natal.
2. Transmissão
A principal via de transmissão da sífilis é a sexual. A transmissão vertical ocorre
predominantemente por via transplacentária e pode acontecer em qualquer fase
da gestação, sendo mais frequente nas fases iniciais da doença. Estima-se que a
taxa de transmissão vertical seja elevada, especialmente na sífilis recente,
podendo ultrapassar 70%. A transmissão durante o parto é rara e a amamentação
só representa risco se houver lesão sifilítica ativa na mama, uma vez que o leite
materno não transmite a infecção.
3. Classificação clínica
A sífilis é classificada de acordo com o tempo de infecção e as manifestações
clínicas.
A sífilis primária caracteriza-se pelo cancro duro, lesão única, indolor, de base
endurecida,
com
linfadenopatia
regional.
A sífilis secundária apresenta manifestações cutaneomucosas disseminadas,
frequentemente acometendo palmas e plantas, além de sintomas sistêmicos.
A sífilis latente é assintomática e diagnosticada exclusivamente por exames
sorológicos, podendo ser recente (até 1 ano) ou tardia (mais de 1 ano ou tempo
ignorado).
A sífilis terciária ocorre anos após a infecção inicial e pode comprometer sistema
nervoso central, sistema cardiovascular e ossos, com lesões graves e irreversíveis.
Na prática obstétrica, a maioria das gestantes é diagnosticada na fase latente tardia
ou de duração ignorada, devido à identificação da infecção durante exames de
rotina do pré-natal
4. Diagnóstico
O diagnóstico da sífilis baseia-se na associação entre dados clínicos, histórico
epidemiológico e exames laboratoriais. Como grande parte das gestantes é
assintomática, os exames sorológicos são fundamentais.
Os testes imunológicos dividem-se em treponêmicos, que detectam anticorpos
específicos contra o Treponema pallidum e permanecem reagentes por toda a vida,
e não treponêmicos, que detectam anticorpos anticardiolipina, são quantitativos
e permitem o acompanhamento da resposta ao tratamento.
Na gestação, o tratamento não deve ser adiado. Diante de um único teste
reagente, treponêmico ou não treponêmico, o tratamento deve ser iniciado
imediatamente, sem aguardar confirmação diagnóstica, para reduzir o risco de
transmissão vertical
5. Tratamento
Em gestantes, o tratamento deve ser iniciado imediatamente assim que qualquer
teste para sífilis estiver reagente, seja ele treponêmico ou não treponêmico, sem
esperar a confirmação por um segundo exame.
Quando o resultado apresentar títulos baixos, é essencial realizar uma anamnese
detalhada, verificando se essa mulher já tratou sífilis anteriormente, pois
titulações baixas podem representar apenas cicatriz sorológica, e não uma
infecção ativa.
A sífilis gestacional é tratada como uma sífilis terciária ou latente tardia
1ª ESCOLHA Penicilina G benzatina 2,4 milhões UI - IM, (1,2 milhão UI em cada glú
teo)/semana, durante 3 semanas.
2ª ESCOLHA Ceftriaxona 1g, IV ou IM, 1x/dia, por 8 a 10 dia
6. Seguimento e controle de cura
O seguimento deve ser realizado com testes não treponêmicos quantitativos.
Considera-se resposta terapêutica adequada a redução dos títulos em pelo menos
duas diluições dentro de seis meses para sífilis recente e até doze meses para sífilis
tardia.
Na gestante, o controle sorológico deve ser mensal até o parto. A persistência de
títulos baixos pode representar cicatriz sorológica, desde que haja tratamento
prévio documentado e ausência de nova exposição de risco.
SEGUIMENTO PÓS-TRATAMENTO
•
Repetir VDRL:
o
3, 6, 9 e 12 meses (não gestante)
o
Mensa…'),
  ('usg_obstetricia', (SELECT id FROM categorias WHERE nome = 'Obstetrícia'), 'Ultrassonografia em Obstetrícia', 'Z36', 'ULTRASSONOGRAFIA EM OBSTETRÍCIA
CID: Z36
1. Conceito
A ultrassonografia obstétrica é um método diagnóstico não invasivo, seguro e
amplamente utilizado no acompanhamento da gestação. Permite avaliar a
localização e viabilidade da gravidez, a idade gestacional, o crescimento e
desenvolvimento fetal, a anatomia do feto, a placenta, o líquido amniótico e a
vitalidade fetal. Trata-se de exame complementar ao pré-natal clínico, devendo ser
solicitado de forma racional e conforme a idade gestacional e as condições
maternas e fetais.
2. Vias de realização
A ultrassonografia obstétrica pode ser realizada por via transvaginal ou abdominal.
A via transvaginal é preferencial no primeiro trimestre, especialmente antes de 10
semanas, por permitir melhor visualização do embrião, dos anexos ovulares, da
datação gestacional e da corionicidade. Também é utilizada no segundo e terceiro
trimestres para avaliação do colo uterino e da inserção placentária.
A via abdominal é mais utilizada a partir do final do primeiro trimestre, sendo
indicada para avaliação da biometria fetal, morfologia fetal, placenta, líquido
amniótico e Dopplervelocimetria.
3. Ultrassonografia no primeiro trimestre
As ultrassonografias realizadas até 14 semanas têm papel fundamental na
confirmação da gestação e na definição da idade gestacional. O exame permite
confirmar a gestação intrauterina, afastar gestação ectópica, avaliar sangramentos
iniciais, identificar gestações múltiplas, confirmar atividade cardíaca embrionária
e realizar a datação gestacional.
A determinação da idade gestacional é mais precisa quando realizada no primeiro
trimestre, especialmente pela medida do comprimento cabeça-nádegas (CCN),
sendo este o padrão ouro para datação. Uma vez estabelecida a idade gestacional
por ultrassonografia precoce, ela não deve ser modificada por exames posteriores.
Entre 11 semanas e 13 semanas e 6 dias, é realizada a ultrassonografia morfológica
do primeiro trimestre, que permite o rastreamento de anomalias cromossômicas
por meio da avaliação da translucência nucal e outros marcadores
ultrassonográficos, associados ou não a marcadores bioquímicos.
4. Ultrassonografia no segundo trimestre
As ultrassonografias realizadas entre 14 e 28 semanas são fundamentais para
avaliação detalhada da anatomia fetal e do crescimento. O principal exame desse
período é a ultrassonografia morfológica do segundo trimestre, realizada
preferencialmente entre 18 e 24 semanas.
Esse exame permite a identificação de malformações fetais estruturais, avaliação
sistemática dos órgãos fetais, análise da placenta, do líquido amniótico e
rastreamento de prematuridade por meio da medida do colo uterino. Nessa fase,
também é possível realizar a biometria fetal para estimativa do peso fetal e
acompanhamento do crescimento.
O ecocardiograma fetal pode ser indicado quando há suspeita de cardiopatia
congênita, arritmias fetais, malformações associadas, diabetes materno
descompensado, gestação gemelar monocoriônica ou presença de autoanticorpos
maternos específicos.
5. Ultrassonografia no terceiro trimestre
No terceiro trimestre, a ultrassonografia é utilizada principalmente para avaliação
do crescimento fetal, estimativa do peso, posição fetal, quantidade de líquido
amniótico, localização placentária e vitalidade fetal. Nessa fase, a ultrassonografia
não é indicada de rotina para todas as gestantes de risco habitual, sendo solicitada
conforme indicações clínicas específicas.
A Dopplervelocimetria obstétrica torna-se particularmente importante em
gestações de alto risco, como restrição de crescimento fetal, síndromes
hipertensivas da gestação, diabetes, isoimunização Rh e suspeita de insuficiência
placentária.
6. Dopplervelocimetria obstétrica
A Dopplervelocimetria avalia o fluxo sanguíneo materno-fetal e é indicada para
monitorar a vitalidade fetal em situações de risco. Os principais vasos avaliados
incluem artéria umbilical, artéria cerebral média e ducto venoso, permitindo
identificar sinais precoces de sofr…'),
  ('vulvovaginites', (SELECT id FROM categorias WHERE nome = 'Ginecologia/IST'), 'Vulvovaginites', 'N76', 'VULVOVAGINITES
CID: N76
1. Conceito
As vulvovaginites correspondem aos processos inflamatórios e infecciosos que
acometem a vulva e a vagina, representando uma das principais causas de
atendimento ginecológico na atenção primária e especializada. Caracterizam-se,
de modo geral, pela presença de corrimento vaginal associado ou não a prurido,
ardor, disúria, dispareunia, odor vaginal e sinais inflamatórios locais. A etiologia
pode ser infecciosa ou não infecciosa, estando frequentemente relacionada a
alterações do ecossistema vaginal.
2. Principais Formas clinicas
2.1 Vaginose Bacteriana
Quadro clínico: corrimento branco-acinzentado, odor forte, pH > 4,5.
EXAMES :
- Microscopia a fresco:
→ Para identificar clue cells
- pH vaginal: (>4,5)
- Teste de aminas (Whiff test): POSITIVO
- Escore de Nugent (se o serviço oferece)
Diagnóstico: critérios de Amsel, microscopia com clue cells.
Tratamento: Metronidazol 500 mg VO 12/12h por 7 dias.
2.2 Candidíase Vulvovaginal
Quadro clínico: prurido intenso, corrimento grumoso tipo ''leite coalhado'',
hiperemia.
EXAMES:
- Microscopia a fresco: presença de HIFAS e pseudohifas
- pH vaginal normal (< 4,5)
- NÃO solicitar cultura de rotina, somente em recorrências (>4/ano)
- Considerar função hepática se tratamento supressor prolongado
Tratamento não complicada: Fluconazol 150 mg VO dose única.
Complicada: Fluconazol dias 1,4,7 + terapia supressora por 6 meses.
2.3 Vaginose Citolítica
Excesso de lactobacilos, pH muito baixo.
EXAMES:
- Microscopia a fresco: DEBRIS celulares e lise
- pH vaginal: MUITO baixo
- Teste de aminas: NEGATIVO
- Não realizar culturas
Tratamento: óvulos de bicarbonato de sódio 10% ou borato 2%.
2.4 Tricomoníase
IST por Trichomonas vaginalis.
Corrimento amarelo-esverdeado bolhoso, colo em framboesa, pH > 4,5.
EXAMES:
- Exame a fresco: visualização do protozoário flagelado (*Trichomonas vaginalis*)
- pH vaginal > 4,5
- Teste de aminas pode ser POSITIVO
- Teste de Schiller com falhas
- PCR (se disponível)
- Exames para ISTs associados: HIV, sífilis, hepatites
Tratamento: Metronidazol 500 mg VO 12/12h por 7 dias + tratar parceiro.
2.5 Vaginite Aeróbica
Corrimento volumoso, inflamação, Whiff negativo.
EXAMES:
- Microscopia: PMN + células parabasais + ausência de lactobacilos
- Escore de 7–10 = forma grave
- pH > 4,5
- Whiff test NEGATIVO
- NÃO solicitar cultura de rotina
Tratamento: Clindamicina creme vaginal por 14 dias.
2.6 Vaginite Descamativa Inflamatória
Corrimento purulento crônico
EXAMES
- Microscopia: PMN em grande quantidade + células parabasais
- pH > 4,5
- Excluir Tricomoníase: exame a fresco
- Avaliar outras ISTs se necessário
Tratamento: Clindamicina vaginal por 21 dias + hidrocortisona 2–4 semanas.
OBSERVAÇÃO
Encaminhar ao ginecologista em caso de falha terapêutica, recorrências, gestantes
refratárias ou suspeita de IST complexa.
3. CONSIDERAÇÕES FINAIS
As vulvovaginites constituem condição frequente na prática ginecológica e
demandam abordagem clínica cuidadosa para identificação correta da etiologia. O
diagnóstico preciso, aliado à solicitação racional de exames complementares, é
essencial para garantir tratamento adequado, prevenir recorrências e reduzir
complicações, especialmente em gestantes.
A educação da paciente quanto aos fatores predisponentes, hábitos de higiene
íntima adequados e adesão ao tratamento prescrito é parte fundamental do
manejo. O uso indiscriminado de medicações sem diagnóstico definido pode
contribuir para recorrência dos sintomas e resistência terapêutica, reforçando a
importância de uma abordagem baseada em protocolos clínicos atualizados.'),
  ('ist', (SELECT id FROM categorias WHERE nome = 'Ginecologia/IST'), 'Infecções Sexualmente Transmissíveis (IST)', 'A64/N72/A63.0/N73.9', 'INFECÇÕES SEXUALMENTE TRANSMISSÍVEIS
CID: A64
1. INTRODUÇÃO
As Infecções Sexualmente Transmissíveis (ISTs) representam uma das principais
demandas clínicas da Atenção Primária. O Ministério da Saúde orienta que o
manejo seja baseado no reconhecimento precoce dos sinais e sintomas, na
ênfase em exames diagnósticos acessíveis, e no tratamento adequado e
imediato, evitando complicações como infertilidade, DIP, transmissão vertical,
câncer de colo e óbito fetal.
A abordagem deve integrar prevenção combinada, rastreamento sistemático e
manejo clínico padronizado.
2. PREVENÇÃO COMBINADA E SEXO SEGURO
2.1 Conceito de Prevenção Combinada
A prevenção combinada significa adotar múltiplas estratégias atuando juntas
para reduzir o risco de IST. Nenhuma ação isolada é suficiente.
Estratégias obrigatórias para o município:
1. Testagem regular
•
HIV, sífilis e hepatites virais regularmente para todos os pacientes
sexualmente ativos.
•
Populações vulneráveis devem testar com maior frequência.
2. Imunização
•
Hepatite A e B
•
HPV (conforme faixa etária)
3. Redução de danos
•
Acesso a insumos de prevenção
•
Suporte psicológico e sexualidade segura
4. PrEP e PEP
•
PrEP para indivíduos elegíveis
•
PEP em até 72h, conforme violência sexual ou exposição ocupacional
3. CLASSIFICAÇÃO DAS ISTs POR SÍNDROMES CLÍNICAS
As ISTs são divididas em três principais síndromes para facilitar manejo:
3.1 ÚLCERAS GENITAIS
As úlceras genitais são lesões caracterizadas pela perda da integridade do epitélio
da vulva, vagina ou colo uterino, podendo envolver apenas a epiderme ou também
a derme. Representam importante causa de procura por atendimento ginecológico
e estão frequentemente associadas a infecções sexualmente transmissíveis,
embora também possam ter etiologia não infecciosa. A correta identificação da
causa é essencial, pois as condutas terapêuticas e as implicações epidemiológicas
variam conforme a etiologia.
3.2 PRINCIPAIS ULCERAS GENITAIS
•
Cancro mole
•
Herpes genital
•
Sífilis
•
Linfogranuloma venéreo (LGV)
•
Donovanose
3.3 DIVISÃO PRINCIPAL:
•
Úlceras dolorosas → Cancro Mole e Herpes
•
Úlceras indolores:
o
Sífilis
o
LGV
o
Donovanose
3.4 CANCRO MOLE
Agente: Haemophilus ducreyi
Quadro clínico
•
Úlceras dolorosas, múltiplas
•
Bordas irregulares, fundo sujo/necrosado
•
Odor forte
•
Linfadenopatia dolorosa unilateral
•
Fistulização por um único orifício
Exames
•
Pesquisa de gram: bacilos gram-negativos
•
Cultura/PCR se disponível
•
Testar HIV e sífilis
Tratamento
•
Azitromicina 1 g VO dose única
•
Também trata clamídia
3.5 HERPES GENITAL
Quadro clínico
•
Vesículas agrupadas sobre base eritematosa
•
Muito dolorosas
•
Rompem → formam crostas
•
Primo-infecção dura mais (até 10 dias)
Exames
•
Diagnóstico clínico
•
PCR HSV se disponível
•
Sorologia NÃO serve para diagnóstico agudo
Tratamento
Aciclovir 200 mg, 2 comp de 8/8h por 7–10 dias
•
Crise recorrente: iniciar ao primeiro sinal (coceira/queimação)
3.6 SÍFILIS
Classificação
1. Primária
•
Úlcera única, indolor
•
“Cancro duro”
•
Base endurecida, borda regular
•
Rica em treponemas
2. Secundária
•
Lesões por tronco e membros
•
Lesões em palma das mãos e plantas dos pés
•
Sintomas sistêmicos: febre, linfadenopatia, cefaleia
3. Latente
•
Testes positivos, sem sintomas
•
Recente: <1 ano
•
Tardia: >1 ano
4. Terciária
•
Lesões gomosas
•
Comprometimento neurológico e cardiovascular
3.7 DIAGNOSTICO/EXAMES
Existem dois grandes grupos de exames usados para diagnosticar sífilis: testes
diretos e testes imunológicos.
• Testes diretos
São indicados nas fases iniciais da infecção, quando o organismo ainda não
produziu anticorpos contra o Treponema pallidum.
Nesses casos, a identificação do agente é feita observando diretamente o
treponema, por exemplo, pela microscopia de campo escuro, que apresenta
sensibilidade entre 74% e 86%.
Além disso, também podem ser utilizados outros métodos de detecção direta,
como imunofluorescência direta, avaliação de amostras coradas e exame
histopatológico por biópsia.
• Testes imunológicos
Sã…'),
  ('cancer_colo', (SELECT id FROM categorias WHERE nome = 'Ginecologia/IST'), 'Câncer do Colo do Útero', 'C53', 'CANCER DO COLO DO ÚTERO
CID: C53
1. EPIDEMIOLOGIA E IMPORTÂNCIA
O câncer de colo do útero é um dos mais preveníveis e tratáveis quando identificado
precocemente. É o 3º tipo de câncer mais incidente entre mulheres no Brasil, com
estimativa de 17 mil casos novos por ano (2023–2025) → incidência de 15,28
casos/100.000 mulheres.
DISTRIBUIÇÃO GEOGRÁFICA
•
Região Norte apresenta maior incidência e mortalidade.
•
Diferenças regionais se relacionam principalmente à qualidade e cobertura
do
rastreio.
2. HISTÓRIA NATURAL DO HPV E DO CÂNCER DO COLO
O HPV é o agente etiológico essencial do câncer do colo, mas sozinho não é
suficiente . Tem mais de 200 genótipos; cerca de 40 infectam o trato genital, sendo
os principais de alto risco oncogênico: 16 e 18, seguidos por 31, 33, 45, 52, 58
Outros cânceres relacionados ao HPV
•
Ânus
•
Vulva
•
Vagina
•
Pênis
•
Orofaringe
•
Laringe
•
Boca
3. LINHAS DE CUIDADO DO CÂNCER DO COLO
O manejo ocorre em 4 fases:
1. PREVENÇÃO PRIMÁRIA
•
Vacinação HPV (6,11,16,18 – quadrivalente no SUS; nonavalente na rede
privada)
•
Melhor aplicada antes da vida sexual, mas ainda indicada para mulheres já
expostas para melhorar a resposta imunológica.
2. PREVENÇÃO SECUNDÁRIA (RASTREIO)
•
Citologia (Papanicolau)
•
Teste de HPV-DNA (novo protocolo nacional)
3. DIAGNÓSTICO E TRATAMENTO DAS LESÕES PRECURSORAS
•
Colposcopia
•
Biópsias
•
Excisão da Zona de Transformação (EZT / CAF / Cone)
4. TRATAMENTO DO CÂNCER INVASOR
•
Cirurgia
•
Radioterapia
•
Quimioterapia
4. RASTREAMENTO DO CÂNCER DO COLO –(CID-10: 12.4)
DIRETRIZ ANTIGA (citologia)
INÍCIO
•
25 a 64 anos, se sexualmente ativa
•
Paciente virgem não rastrear
INTERVALO
•
Anual
•
Após 2 exames consecutivos negativos, rastrear a cada 3 anos
INTERRUPÇÃO
•
Após 64 anos E
•
Pelo menos 2 exames negativos nos últimos 5 anos
Se nunca fez rastreio → interromper após 2 citologias negativas com intervalo 1–3
anos.
5. SITUAÇÕES ESPECIAIS
GESTANTE
•
Rastreio igual à não gestante
•
Conduta somente após parto se necessário
PÓS-MENOPAUSA
•
Atrofia pode dificultar leitura
•
Estrogenização vaginal com estriol por 21 dias → coletar após 7 dias
HISTERECTOMIA
•
Total por causa benigna → suspender rastreio
•
Por NIC2/NIC3/câncer → seguir protocolo de lesão
HIV / IMUNOSSUPRIMIDAS
•
Iniciar após início da vida sexual
•
Citologia a cada 6 meses no 1º ano, depois anual
•
CD4 < 200 → manter a cada 6 meses
6. CONDUTAS POR RESULTADO CITOPATOLÓGICO
A conduta varia conforme resultado citológico, faixa etária, gestação e
imunossupressão (HIV). Alterações glandulares e resultados sugestivos de alto
grau sempre exigem colposcopia imediata.
6.1 ASC-US (células escamosas atípicas de significado indeterminado)
•
< 25 anos: repetir citologia em 3 anos. A chance de regressão é alta e a
conduta conservadora evita procedimentos desnecessários em mulheres
jovens.
•
25–29 anos: repetir em 12 meses. Se normal, retornar ao rastreio de rotina;
se mantiver alteração, encaminhar para colposcopia.
•
30–64 anos: repetir em 6 meses. Persistindo anormalidade ou surgindo
lesão de maior gravidade, colposcopia.
•
Gestante: não há urgência de intervenção; repetir 3 meses pós-parto.
•
HIV/imunossuprimida: colposcopia imediata, independentemente da idade,
pela maior chance de lesão significativa.
6.2 LSIL / LIEBG (lesão intraepitelial escamosa de baixo grau)
•
< 25 anos: repetir citologia em 3 anos (alta taxa de regressão espontânea).
•
≥ 25 anos: repetir em 6 meses. Se persistir alteração ou progredir,
colposcopia. Em HIV, a orientação é mais intervencionista (ver abaixo).
•
HIV/imunossuprimida: colposcopia desde já.
6.3 ASC-H (atipias escamosas nas quais não se pode excluir lesão de alto grau)
Indica alto risco de lesão significativa. A conduta é colposcopia imediata (não
aguardar repetição).
6.4 HSIL / LIEAG (lesão intraepitelial escamosa de alto grau)
Colposcopia imediata com biópsia das áreas suspeitas. Achado histológico de NIC
2/3 exige tratamento (excisão da zona de transformação conforme tipo de ZT; ver
seção de tratamento…'),
  ('doenca_mama', (SELECT id FROM categorias WHERE nome = 'Ginecologia/IST'), 'Doença da Mama', 'N60', 'DOENÇA DA MAMA
CID: N60
1.AVALIAÇÃO INICIAL DA PACIENTE COM QUEIXA MAMÁRIA
Toda paciente com queixa mamária deve ser submetida a uma anamnese
minuciosa e exame físico completo das mamas e regiões axilares. Na anamnese,
deve-se investigar o início dos sintomas, sua evolução, a presença de dor, nódulo
palpável, alterações cutâneas, retração mamilar, derrame papilar, relação dos
sintomas com o ciclo menstrual, história gestacional e de amamentação, uso de
medicamentos hormonais e antecedentes pessoais ou familiares de câncer de
mama.
O exame físico deve incluir inspeção estática e dinâmica das mamas, observandose assimetria, retrações, espessamento cutâneo, aspecto em casca de laranja,
ulcerações e alterações do complexo aréolo-papilar. A palpação deve ser
sistemática, abrangendo todos os quadrantes mamários e a região retroareolar,
além da palpação cuidadosa das axilas para avaliação linfonodal.
2.MASTALGIA
A mastalgia é um sintoma frequente e, na maioria das vezes, está relacionada a
condições benignas. Pode ser classificada como cíclica, quando ocorre
principalmente na fase lútea do ciclo menstrual, ou acíclica, quando não apresenta
relação com o ciclo.
Do ponto de vista diagnóstico, a mastalgia isolada, com exame físico normal e sem
fatores de risco para câncer de mama, não exige a realização imediata de exames
de imagem. Nesses casos, a conduta inicial é clínica, com orientações e
acompanhamento.
Entretanto, a solicitação de exames é indicada quando a dor é persistente,
unilateral, progressiva, associada a nódulo palpável, alterações cutâneas ou
quando a paciente apresenta fatores de risco para neoplasia mamária. Nessas
situações, o exame de primeira linha é a ultrassonografia das mamas,
especialmente em mulheres jovens. A mamografia deve ser solicitada em mulheres
com idade igual ou superior a 40 anos ou quando houver suspeita clínica relevante.
3. ALTERAÇÕES FUNCIONAIS BENIGNAS DA MAMA (AFBM)
As alterações funcionais benignas incluem mastalgia cíclica, adensamentos e
cistos mamários. Os cistos são comuns e, em geral, benignos, especialmente em
mulheres entre 25 e 45 anos.
3.1 EXAMES
ULTRASSONOGRAFIA DE MAMAS – Exame de escolha
•
Diferencia lesão cística x sólida
•
Cisto simples: anecoico, bordas regulares, reforço acústico posterior
PUNÇÃO ASPIRATIVA POR AGULHA FINA (PAAF)
•
Confirma cisto
•
Terapêutica se cisto volumoso
•
Enviar líquido para citologia se:
o
Sanguinolento
o
Massa residual pós-punção
o
Recidiva frequente
O principal exame indicado para investigação dessas alterações é a
ultrassonografia de mamas, pois permite diferenciar lesões sólidas de lesões
císticas. O cisto simples apresenta-se ao ultrassom como uma imagem anecoica,
de contornos regulares, com reforço acústico posterior.
Quando o cisto é volumoso, doloroso ou gera dúvida diagnóstica, está indicada a
punção aspirativa por agulha fina (PAAF). A punção tem valor diagnóstico e
terapêutico. O líquido aspirado só deve ser encaminhado para análise
citopatológica se for sanguinolento ou se houver massa residual após o
esvaziamento. Cistos simples, completamente esvaziados e assintomáticos, não
necessitam de investigação adicional, apenas seguimento clínico.
4.DERRAME PAPILAR
O derrame papilar é uma queixa relativamente comum e pode ter causas
fisiológicas ou patológicas. A avaliação criteriosa é fundamental, pois uma
pequena parcela está associada ao câncer de mama.
O derrame considerado fisiológico costuma ser bilateral, multiductal, provocado à
compressão e apresentar coloração variada. Nesses casos, geralmente não há
necessidade de investigação com exames de imagem, desde que o exame físico
seja normal.
Por outro lado, o derrame papilar patológico caracteriza-se por ser espontâneo,
unilateral, uniductal, persistente e de aspecto aquoso ou sanguinolento. Nessas
situações, a investigação por exames de imagem é obrigatória.
O exame inicial indicado é a ultrassonografia das mamas, com atenção especial à
região retroareolar. A mamografia deve ser associada, pri…'),
  ('diabetes_mellitus', (SELECT id FROM categorias WHERE nome = 'Endocrinologia'), 'Diabetes Mellitus', 'E10–E14', 'DIABETTES MELLITUS
CID: E10-E14
1.0 CONCEITO
O diabetes mellitus constitui um grupo heterogêneo de doenças metabólicas
caracterizadas pela presença de hiperglicemia crônica, decorrente de defeitos na
secreção de insulina, na ação da insulina ou em ambos. A persistência da
hiperglicemia está associada a alterações metabólicas e vasculares que culminam
em importantes complicações microvasculares e macrovasculares, sendo
considerada uma das principais causas de morbimortalidade no mundo.
De acordo com sua etiopatogenia, o diabetes mellitus pode ser classificado em
diabetes mellitus tipo 1, diabetes mellitus tipo 2, diabetes mellitus gestacional,
diabetes monogênico (MODY) e diabetes secundário a outras condições clínicas ou
uso de medicamentos. Independentemente do tipo, a hiperglicemia sustentada
pode levar ao desenvolvimento de retinopatia diabética, nefropatia diabética,
neuropatia periférica e autonômica, doença cardiovascular aterosclerótica,
doença cerebrovascular e pé diabético.
2. DIABETES MELLITUS TIPO 1 (CID-10: E10)
O diabetes mellitus tipo 1 é uma doença autoimune mediada predominantemente
por linfócitos T, caracterizada pela destruição progressiva das células beta
pancreáticas, resultando em deficiência absoluta de insulina. Essa condição leva à
incapacidade do organismo de utilizar adequadamente a glicose como fonte
energética, favorecendo o estado catabólico.
A apresentação clínica mais comum inclui poliúria, polidipsia, polifagia associada
à perda ponderal não intencional, além do risco elevado de cetoacidose diabética,
que pode ser a forma inicial de manifestação da doença. O tratamento exige
insulinoterapia por toda a vida.
2.1 EXAMES/DIAGNOSTICO
1. Glicemia de jejum ≥126 mg/dL (confirmar)
2. HbA1c ≥6,5%
3. TOTG 2h ≥200 mg/dL
4. Glicemia casual ≥200 + sintomas
5. Autoanticorpos (em adultos com suspeita de LADA):
o
Anti-GAD (mais persistente)
6. Peptídeo C (baixo = tipicamente DM1)
2.2 TRATAMENTO
O tratamento fundamenta-se obrigatoriamente na insulinoterapia em esquema
basal-bolus, associada à educação em saúde, contagem de carboidratos,
monitorização glicêmica frequente e orientação quanto ao reconhecimento e
manejo da hipoglicemia. O encaminhamento ao especialista em endocrinologia é
indicado nos casos de cetoacidose diabética, gestação e dificuldade de controle
metabólico.
3. DIABETES MELLITUS TIPO 2 (CID-10: E11 )
O diabetes mellitus tipo 2 é uma doença metabólica crônica e progressiva
caracterizada por resistência periférica à insulina, principalmente nos músculos,
fígado e tecido adiposo, associada à falência progressiva das células beta
pancreáticas. Observa-se também aumento da produção hepática de glicose e
disfunções hormonais intestinais e renais, fenômenos descritos no chamado
octeto de DeFronzo.
3.1 EXAMES /DIAGNOSTICO
PARA DIAGNOSTICAR:
1. GLICEMIA DE JEJUM ≥ 126 MG/DL
– Repetir em outro dia para confirmar (obrigatório).
2. TOTG – TESTE ORAL DE TOLERÂNCIA À GLICOSE
– Dose 75 g de glicose
– 2h ≥ 200 mg/dL
– 1h ≥ 209 mg/dL (novo critério – pág.10)
3. HBA1C ≥ 6,5%
– Método HPLC obrigatório.
– NÃO usar se: anemia, DRC, hemoglobinopatias.
4. GLICEMIA CASUAL ≥ 200 MG/DL + SINTOMAS CLÁSSICOS (4 P’S)
– Dispensa repetição.
Importante: Precisam de 2 exames alterados exceto glicemia casual com
sintomas
3.2EXAMES PARA PRÉ-DIABETES
– GJ 100–125
– TOTG 2h: 140–199
– TOTG 1h: 155–208
– HbA1c 5,7–6,4%
Todo pré-diabético deve fazer TOTG obrigatoriamente.
3.3. RASTREAMENTO DE DIABETES
Solicitar Glicemia de jejum + HbA1c para:
✔ Todos ≥ 35 anos
✔ <35 anos com fatores de risco: obesidade, HAS, sedentário, história familiar
✔ Quem teve diabetes gestacional
✔ Pré-diabéticos (anual)
✔ Quem usa: corticoide, antipsicóticos, imunossupressores
✔ Comorbidades: HIV, doença pancreática, acromegalia
Se glicemia e HbA1c normais mas o paciente tem ≥ 3 fatores de risco → pedir
TOTG.
3.4. EXAMES PARA ACOMPANHAMENTO DO DIABETES
1. Metas glicêmicas
– HbA1c alvo: < 7% para maioria
– Jejum: 80–130
– 2h pós-prandial: <180
Idoso frágil → H…'),
  ('obesidade', (SELECT id FROM categorias WHERE nome = 'Endocrinologia'), 'Obesidade', 'E66', 'OBESIDADE
CID-10: E66
1. CONCEITO E IMPACTO CLÍNICO
1. Conceito
A obesidade é uma doença crônica, multifatorial e recidivante, caracterizada pelo
acúmulo excessivo de gordura corporal capaz de causar prejuízos à saúde, com
aumento significativo da morbimortalidade. Não se trata apenas de um fator de
risco isolado, mas de uma condição clínica associada a múltiplas disfunções
metabólicas, cardiovasculares, osteoarticulares, respiratórias e psicossociais,
exigindo abordagem contínua e individualizada no âmbito da atenção à saúde
3.CLASSIFICACAO E DIAGNOSTICO
O diagnóstico da obesidade é tradicionalmente realizado por meio do índice de
massa corporal (IMC), calculado pela razão entre peso e altura ao quadrado.
Valores de IMC iguais ou superiores a 30 kg/m² definem obesidade, sendo
classificados em graus conforme a gravidade.
Entretanto, reconhece-se que o IMC isolado possui limitações, devendo ser
complementado pela avaliação da distribuição de gordura corporal, especialmente
a adiposidade central, por meio da circunferência abdominal. A obesidade
abdominal está fortemente associada a maior risco cardiometabólico, mesmo em
indivíduos com IMC abaixo de 30 kg/m².
IMC
•
25–29,9 = Sobrepeso
•
30–34,9 = Obesidade grau 1
•
35–39,9 = Obesidade grau 2
•
≥40 = Obesidade grau 3
CIRCUNFERÊNCIA ABDOMINAL (MARCADOR DE RISCO VISCERAL)
•
•
Risco aumentado:
o
≥80 cm (mulheres)
o
≥94 cm (homens)
Risco muito aumentado:
o
≥88 cm (mulheres)
o
≥102 cm (homens)
IDOSO
•
IMC “normal” entre 22 e 27 (maior risco de sarcopenia).
SDS
4. QUADRO CLÍNICO
O quadro clínico da obesidade é variável e pode incluir limitações funcionais,
fadiga, dispneia aos esforços, dores articulares, alterações do sono e
comprometimento da qualidade de vida. Frequentemente associa-se a
comorbidades como diabetes mellitus tipo 2, hipertensão arterial, dislipidemia,
síndrome metabólica, apneia obstrutiva do sono, osteoartrose, esteatose hepática
não alcoólica, infertilidade e transtornos psicológicos, como depressão e
ansiedade.
5. TRATAMENTO
O tratamento da obesidade deve ser contínuo, multiprofissional e individualizado,
com foco na redução sustentada do peso e na melhora das comorbidades
associadas.
A base do tratamento é não medicamentosa, incluindo mudanças no estilo de vida,
com reeducação alimentar, prática regular de atividade física e intervenções
comportamentais. O plano alimentar deve ser hipocalórico, equilibrado e adaptado
à realidade do paciente, visando adesão a longo prazo.
O tratamento medicamentoso está indicado quando não há resposta adequada às
medidas não farmacológicas após período mínimo de acompanhamento ou
quando o paciente apresenta obesidade associada a comorbidades. As
medicações devem ser prescritas de forma criteriosa, considerando perfil clínico,
contraindicações e efeitos adversos.
A cirurgia bariátrica e metabólica é indicada em casos selecionados de obesidade
moderada a grave, especialmente quando há falha do tratamento clínico e
presença de comorbidades relevantes. A indicação deve seguir critérios técnicos
estabelecidos pelo Conselho Federal de Medicina, com avaliação multiprofissional
e seguimento rigoroso no pós-operatório.
6. EXAMES
1. GLICEMIA DE JEJUM
→ Detecta resistência insulínica e pré-diabetes.
2. HEMOGLOBINA GLICADA (HBA1C)
→
Avaliação
de
controle
glicêmico
nos
Obesos têm risco 70 vezes maior de diabetes tipo 2
últimos
3
meses.
3. PERFIL LIPÍDICO COMPLETO
Inclui:
•
LDL
•
HDL
•
Triglicerídeos
•
Colesterol total
Motivo: Obesidade é um dos 5 critérios da síndrome metabólica
4. FUNÇÃO HEPÁTICA (TGO/TGP)
→ A obesidade está diretamente relacionada à esteatose hepática não alcoólica
(NAFLD).
TGO/TGP ajudam a identificar inflamação hepática (“esteato-hepatite”).
5. TSH E T4 LIVRE
→ Hipotireoidismo causa ganho de peso, fadiga e
→ É consenso que todo obeso precisa de avaliação tireoidiana.
hiperlipidemia.
6. CREATININA, UREIA E EAS
→ A obesidade aumenta risco de:
•
Síndrome metabólica
•
Proteinúria
•
Doença renal crônica
EAS identifica alterações…'),
  ('dislipidemia', (SELECT id FROM categorias WHERE nome = 'Endocrinologia'), 'Dislipidemia', 'E78', 'DISLIPIDEMIA
CID-10: E78
1. CONCEITO
A dislipidemia é definida como qualquer alteração nos níveis séricos dos lipídeos
plasmáticos, incluindo colesterol total, LDL-colesterol, HDL-colesterol e
triglicerídeos. Trata-se de uma condição altamente prevalente na população
adulta, sendo reconhecida como um dos principais fatores de risco modificáveis
para o desenvolvimento de doenças cardiovasculares ateroscleróticas. A
dislipidemia está associada ao aumento da incidência de doença arterial
coronariana, acidente vascular cerebral e doença carotídea, além de representar
risco significativo de pancreatite aguda nos casos de hipertrigliceridemia grave,
especialmente quando os níveis de triglicerídeos ultrapassam 1.000 mg/dL.
2. RASTREAMENTO
O rastreamento da dislipidemia deve ser realizado em todos os adultos a partir dos
20 anos de idade, com repetição a cada cinco anos nos indivíduos sem fatores de
risco adicionais. Em crianças com idade igual ou superior a dois anos, a
investigação está indicada quando há história familiar de doença arterial
coronariana precoce, hipercolesterolemia familiar diagnosticada ou forte suspeita
clínica dessa condição.
3. ANAMNESE
A avaliação clínica deve incluir investigação detalhada da idade de início da
dislipidemia, antecedentes familiares de dislipidemia, diabetes mellitus e doença
cardiovascular precoce. É fundamental identificar o uso de medicamentos que
possam elevar os níveis lipídicos, como diuréticos tiazídicos, betabloqueadores,
corticosteroides, anticoncepcionais hormonais e anabolizantes. Deve-se também
avaliar o consumo de álcool, o padrão alimentar, o nível de atividade física e a
presença de doenças associadas que possam causar dislipidemia secundária,
como hipotireoidismo, diabetes mellitus, síndrome nefrótica e doenças
colestáticas.
4. EXAME FÍSICO
O exame físico na atenção primária deve buscar sinais clínicos sugestivos de
dislipidemia grave ou de origem genética. Na hipertrigliceridemia severa, podem ser
observados xantomas eruptivos e lipemia retinalis. Na hipercolesterolemia, são
comuns achados como arco corneano e xantelasmas. A presença de xantomas
tendinosos, palmares ou tuberosos é fortemente sugestiva de hipercolesterolemia
familiar, sendo considerada achado de grande valor diagnóstico.
5. DIAGNÓSTICO
O diagnóstico da dislipidemia é laboratorial e baseia-se na dosagem do perfil
lipídico completo, podendo ser realizado com ou sem jejum, conforme a
disponibilidade e o contexto clínico. Considera-se dislipidemia a presença de LDLcolesterol superior a 130 mg/dL, HDL-colesterol inferior a 40 mg/dL ou triglicerídeos
acima de 150 mg/dL. Valores de LDL-colesterol iguais ou superiores a 190 mg/dL
levantam
forte suspeita
de dislipidemia
primária,
especialmente
hipercolesterolemia familiar, devendo motivar investigação específica.
6. INVESTIGAÇÃO DE CAUSAS SECUNDÁRIAS
No primeiro atendimento, é obrigatória a investigação de causas secundárias de
dislipidemia, uma vez que condições clínicas comuns podem justificar elevação
dos lipídeos. O hipotireoidismo é uma das principais causas de elevação
significativa do LDL-colesterol, sendo imprescindível a avaliação da função
tireoidiana. O diabetes mellitus está frequentemente associado à elevação de
triglicerídeos e aumento do risco cardiovascular. Doenças renais, especialmente a
síndrome nefrótica, e doenças hepáticas colestáticas também devem ser
investigadas.
7. ESTRATIFICAÇÃO DO RISCO CARDIOVASCULAR
A estratificação do risco cardiovascular deve ser realizada utilizando a calculadora
da Sociedade Brasileira de Cardiologia, permitindo definir a intensidade do
tratamento. Pacientes classificados como de muito alto risco, incluindo aqueles
com histórico de infarto do miocárdio ou acidente vascular cerebral, obstrução
arterial significativa, LDL-colesterol igual ou superior a 190 mg/dL ou evidência de
aterosclerose subclínica, devem iniciar tratamento farmacológico de forma
imediata, independentemente do escore obtido.
8. METAS TERAPÊUTICAS
As me…'),
  ('tireoide', (SELECT id FROM categorias WHERE nome = 'Endocrinologia'), 'Doenças da Tireoide', 'E00–E07', 'DOENÇAS DA TIREOIDE
CID: E00-E07
1. CONCEITO
As doenças da tireoide compreendem um grupo de condições clínicas
caracterizadas por alterações na produção, liberação ou ação dos hormônios
tireoidianos, podendo resultar em hipotireoidismo, hipertireoidismo ou processos
inflamatórios da glândula. Os hormônios tireoidianos exercem papel fundamental
no metabolismo energético, na função cardiovascular, no crescimento, no
desenvolvimento neurológico e no equilíbrio hormonal, de modo que suas
disfunções impactam significativamente a saúde global do indivíduo.
2. HIPOTIREOIDISMO( CID-10: E03.9)
2.1 Conceito
O hipotireoidismo é caracterizado pela diminuição da produção dos hormônios
tireoidianos, sendo mais frequentemente causado por doença autoimune,
especialmente a tireoidite de Hashimoto. Outras causas incluem tratamento prévio
com iodo radioativo, tireoidectomia, deficiência ou excesso de iodo e causas
centrais relacionadas ao eixo hipotálamo-hipófise.
2.2 Quadro Clínico
O quadro clínico é variável e geralmente insidioso, podendo incluir fadiga, fraqueza,
intolerância ao frio, queda de cabelo, constipação intestinal, ganho ponderal
discreto, bradicardia e alterações do ciclo menstrual.
2.3 Diagnóstico
O diagnóstico baseia-se principalmente na avaliação laboratorial, sendo o TSH o
primeiro e principal exame a ser solicitado. Valores elevados de TSH associados à
redução do T4 livre confirmam o diagnóstico de hipotireoidismo primário. A
dosagem de anticorpos antitireoperoxidase (anti-TPO) é indicada quando há
suspeita de etiologia autoimune. O T3 não é exame de rotina, sendo reservado para
situações específicas. A ultrassonografia da tireoide auxilia na avaliação estrutural,
especialmente na presença de bócio, heterogeneidade glandular ou
pseudonódulos.
2.4 Tratamento
O tratamento é realizado com levotiroxina, em dose individualizada conforme
idade, peso, comorbidades, sintomas e níveis de TSH. O hipotireoidismo subclínico
deve ser tratado em situações específicas, como em idosos, cardiopatas,
pacientes com
sintomáticos.
osteoporose,
mulheres
pós-menopausa
ou
indivíduos
3. HIPERTIREOIDISMO(CID-10: E05)
3.1 Conceito
O hipertireoidismo caracteriza-se pelo excesso de hormônios tireoidianos
circulantes, sendo a Doença de Graves sua principal causa. Outras etiologias
incluem bócio multinodular tóxico, adenoma tóxico e tireoidites.
3.2 Quadro Clínico
Os sintomas decorrem do estado hipermetabólico e incluem perda ponderal,
taquicardia, palpitações, tremor fino, ansiedade, irritabilidade, intolerância ao
calor e, nos casos de Doença de Graves, oftalmopatia com exoftalmia.
3.3 Diagnóstico
Laboratorialmente, observa-se TSH suprimido associado a elevação do T4 livre e do
T3. A dosagem do TRAb é fundamental para confirmar a Doença de Graves. A
ultrassonografia da tireoide pode demonstrar bócio difuso e aumento da
vascularização.
3.4 Tratamento
O tratamento inclui o uso de antitireoidianos, podendo ser associado ao iodo
radioativo ou à cirurgia em casos selecionados. A tireoidectomia está indicada em
situações como bócio volumoso, falha do tratamento clínico, suspeita de
malignidade, gestantes refratárias ao tratamento medicamentoso ou presença de
doença ocular moderada a grave.
4. TIREOIDITE DE HASHIMOTO(CID-10: E06.3 )
4.1 Conceito
A tireoidite de Hashimoto é uma doença autoimune caracterizada pela produção
de autoanticorpos contra componentes da tireoide, levando à destruição
progressiva do parênquima glandular.
4.2 Quadro Clínico
Pode ser assintomática em fases iniciais ou cursar com sintomas progressivos de
hipotireoidismo ao longo do tempo.
4.3 Diagnóstico
O principal exame diagnóstico é a dosagem do anti-TPO, associada à avaliação do
TSH e do T4 livre. A ultrassonografia costuma revelar glândula heterogênea, com
aspecto pseudonodular.
4.4 Tratamento
O tratamento é indicado apenas quando há alteração funcional, sendo realizada
reposição com levotiroxina conforme necessidade clínica e laboratorial.
5. TIREOIDITE PÓS-PARTO(CID-10: O90.5)
5.1 Con…'),
  ('paratireoide', (SELECT id FROM categorias WHERE nome = 'Endocrinologia'), 'Distúrbios das Paratireoides', 'E21/E20', 'DISTURBIOS DAS PARATIREÓIDES
1. HIPERPARATIREOIDISMO PRIMÁRIO (CID-10: E21.0)
O hiperparatireoidismo primário é uma condição caracterizada pela produção
excessiva e autônoma do paratormônio (PTH), levando à hipercalcemia PTHdependente. Na maioria dos casos, decorre de adenoma de paratireoide, podendo
também estar relacionado à hiperplasia glandular difusa ou, mais raramente, ao
carcinoma de paratireoide.
Deve ser suspeitado principalmente quando a hipercalcemia é identificada em
exames de rotina, sobretudo em pacientes com história de nefrolitíase recorrente,
osteoporose precoce, fraturas patológicas, dor óssea, fraqueza muscular,
constipação, alterações cognitivas ou sintomas neuropsiquiátricos. Muitas vezes o
quadro é insidioso e assintomático, o que reforça a importância do rastreamento
laboratorial adequado.
EXAMES INICIAIS (OBRIGATÓRIOS)
•
Cálcio total e albumina (para cálculo do cálcio corrigido)
•
Cálcio iônico (preferencial, quando disponível)
•
PTH intacto
•
Fósforo sérico
•
Fosfatase alcalina
•
Repetição de cálcio e PTH após 15 dias para confirmação diagnóstica
Após a confirmação laboratorial do diagnóstico, devem ser avaliadas as
repercussões ósseas e renais da doença. A densitometria óssea permite identificar
osteopenia ou osteoporose, sendo T-score inferior a –2,5 critério para abordagem
cirúrgica. A função renal deve ser avaliada por meio do clearance de creatinina, e a
calciúria de 24 horas auxilia tanto na avaliação do risco de nefrolitíase quanto no
diagnóstico diferencial com a hipercalcemia hipocalciúrica familiar. Exames de
imagem do trato urinário, como ultrassonografia ou tomografia, são indicados para
investigação de nefrolitíase ou nefrocalcinose.
Os exames de imagem para localização das paratireoides, como ultrassonografia
cervical e cintilografia com sestamibi, devem ser solicitados exclusivamente após
decisão cirúrgica, não tendo papel no diagnóstico da doença.
A indicação cirúrgica está bem estabelecida e deve ser considerada sempre que
houver hipercalcemia significativa, comprometimento renal, osteoporose, fraturas
vertebrais, hipercalciúria elevada, idade inferior a 50 anos ou dificuldade de
seguimento clínico.
2. HIPERPARATIREOIDISMO SECUNDÁRIO (CID-10: E21.1)
O hiperparatireoidismo secundário corresponde a uma elevação compensatória do
PTH em resposta à hipocalcemia relativa ou à redução da biodisponibilidade do
cálcio, sendo mais frequentemente causado por deficiência de vitamina D, doença
renal crônica ou distúrbios de absorção intestinal. Diferentemente do
hiperparatireoidismo primário, o PTH elevado representa um mecanismo
adaptativo e não autônomo.
Nesses casos, os níveis de cálcio tendem a estar normais ou discretamente
reduzidos, enquanto o fósforo pode variar conforme a etiologia, sendo tipicamente
elevado na doença renal crônica. A fosfatase alcalina costuma estar aumentada,
refletindo maior remodelação óssea.
A conduta baseia-se no tratamento da causa subjacente, com reposição adequada
de vitamina D, manejo da doença renal crônica conforme o estágio e correção de
condições associadas à má absorção intestinal. O tratamento cirúrgico não é
indicado na grande maioria dos casos.
3. HIPOPARATIREOIDISMO (CID-10: E20)
O hipoparatireoidismo é caracterizado pela produção insuficiente de PTH ou pela
resistência periférica à sua ação, resultando em hipocalcemia. A principal causa é
a lesão das paratireoides após procedimentos cirúrgicos cervicais, especialmente
tireoidectomia total, mas também pode ocorrer por doenças autoimunes, causas
genéticas ou distúrbios do magnésio.
Deve ser suspeitado diante de hipocalcemia associada a manifestações
neuromusculares, como parestesias, câimbras, tetania, convulsões, além de sinais
clássicos como Chvostek e Trousseau. Alterações cardíacas, como prolongamento
do intervalo QT, também podem estar presentes.
EXAMES OBRIGATÓRIOS
•
Cálcio total e albumina ou cálcio iônico
•
PTH intacto
•
Fósforo sérico
•
Magnésio sérico
•
Vitamina D (25-OH)
•
Eletrocardiograma
•
C…'),
  ('adrenais', (SELECT id FROM categorias WHERE nome = 'Endocrinologia'), 'Distúrbios das Adrenais', 'E24/E26/D35.0', 'DISTURBIOS DAS ADRENAIS
1. INCIDENTALOMA ADRENAL (CID-10 D44.1)
Define-se incidentaloma adrenal como uma massa adrenal ≥ 1 cm identificada
incidentalmente em tomografia computadorizada ou ressonância magnética
solicitada por outro motivo. A maioria das lesões é benigna e não funcional, porém
até 15% pode apresentar secreção hormonal ou potencial maligno.
O manejo do incidentaloma tem três objetivos principais: avaliar o risco de
malignidade, identificar se a lesão é funcional e definir a necessidade de cirurgia ou
apenas acompanhamento clínico-radiológico.
Lesões pequenas, homogêneas e com baixa densidade tendem a ser benignas.
Lesões grandes, heterogêneas, com bordas irregulares ou crescimento rápido
levantam suspeita de malignidade. Toda lesão deve ser avaliada do ponto de vista
funcional, independentemente do tamanho.
EXAMES OBRIGATÓRIOS
•
Tomografia computadorizada sem contraste (avalia densidade em HU,
forma e bordas)
•
Tomografia com contraste – protocolo adrenal (cálculo de washout absoluto
e relativo)
•
Teste de supressão com dexametasona 1 mg (cortisol pós-dexametasona)
•
Metanefrinas plasmáticas ou urinárias (especialmente se HU >10 ou sinais
clínicos)
•
Aldosterona plasmática e renina (somente em pacientes hipertensos ou
com hipocalemia)
•
DHEA-S (quando suspeita de malignidade)
•
Testosterona e androstenediona (se suspeita de tumor virilizante)
A conduta depende do perfil da lesão. Massas não funcionais, ≤ 4 cm e com HU ≤
10 devem ser acompanhadas com imagem por 1 a 2 anos e reavaliação hormonal
anual. Lesões funcionais ou suspeitas de malignidade devem ser encaminhadas
para cirurgia. Em pacientes idosos ou com alto risco cirúrgico e lesões claramente
benignas, pode-se optar por seguimento clínico.
2. HIPERALDOSTERONISMO PRIMÁRIO ( CID-10: E26.0)
O hiperaldosteronismo primário é caracterizado pela produção excessiva e
autônoma de aldosterona, levando à retenção de sódio, perda de potássio e
hipertensão arterial, frequentemente resistente ao tratamento convencional. As
principais causas são adenoma produtor de aldosterona e hiperplasia adrenal
bilateral.
Deve ser suspeitado em pacientes com hipertensão resistente, hipertensão
associada à hipocalemia, início precoce de hipertensão ou história familiar de AVC
precoce.
EXAMES OBRIGATÓRIOS
•
Aldosterona plasmática (coleta matinal)
•
Renina plasmática (atividade ou concentração)
•
Relação aldosterona/renina (ARR)
•
Testes confirmatórios (sobrecarga salina, fludrocortisona ou captopril, em
centros especializados)
•
Tomografia de adrenais
•
Cateterismo de veias adrenais (padrão-ouro para lateralização)
O tratamento depende da etiologia. Doença unilateral é tratada com
adrenalectomia, com alta taxa de cura. Doença bilateral é tratada clinicamente
com antagonistas do receptor mineralocorticoide, como espironolactona ou
eplerenona, além do controle rigoroso da pressão arterial e reposição de potássio
quando necessário.
3. FEOCROMOCITOMA (CID-10: D35.0 )
O feocromocitoma é um tumor produtor de catecolaminas, potencialmente fatal,
caracterizado por crises adrenérgicas com hipertensão paroxística, cefaleia,
sudorese e palpitações. Pode ser bilateral, maligno ou extra-adrenal
(paraganglioma).
Deve ser suspeitado em pacientes com crises hipertensivas paroxísticas,
hipertensão resistente ou incidentaloma adrenal com densidade elevada.
EXAMES OBRIGATÓRIOS
•
Metanefrinas plasmáticas livres
•
Metanefrinas urinárias de 24 horas
•
Cromogranina A
•
Tomografia computadorizada com contraste
•
Ressonância magnética (preferencial em gestantes e crianças)
•
Cintilografia com MIBG (pesquisa de metástases ou tumores múltiplos)
O tratamento definitivo é cirúrgico, porém exige preparo pré-operatório rigoroso
com bloqueio alfa-adrenérgico por 10 a 14 dias, seguido de beta-bloqueio após
adequado bloqueio alfa, além de hidratação e dieta rica em sódio. Tumores
pequenos geralmente são tratados por via laparoscópica, enquanto tumores
grandes ou malignos exigem cirurgia aberta.
4. SÍNDROME DE CUSHING (…'),
  ('psiquiatria_humor', (SELECT id FROM categorias WHERE nome = 'Saúde Mental'), 'Transtornos do Humor (Depressão/Bipolar)', 'F32/F31/F34', 'TRANSTORNO DO HUMOR
1. CONSIDERAÇÕES GERAIS
Os transtornos do humor são diagnósticos essencialmente clínicos, baseados em
critérios sindrômicos. Entretanto, exames complementares são obrigatórios para
excluir causas clínicas que mimetizam ou agravam quadros depressivos e
maníacos, além de serem fundamentais antes do início e durante o uso de
psicofármacos.
Hipotireoidismo, anemia, distúrbios eletrolíticos, deficiência de vitaminas,
insuficiência renal ou hepática e uso de substâncias podem se manifestar com
sintomas afetivos indistinguíveis de transtornos psiquiátricos primários. Portanto,
a investigação laboratorial adequada é parte integrante da boa prática clínica.
2. TRANSTORNO DEPRESSIVO MAIOR (CID-10: F32)
O transtorno depressivo maior caracteriza-se por humor deprimido e/ou anedonia
por pelo menos duas semanas, associados a sintomas cognitivos e
neurovegetativos, com prejuízo funcional significativo.
Antes de estabelecer o diagnóstico definitivo e iniciar tratamento farmacológico, é
obrigatório excluir causas orgânicas, principalmente endocrinológicas e
metabólicas, que podem cursar com quadro depressivo secundário.
3.EXAMES
Os exames devem ser solicitados na avaliação inicial, especialmente em primeiro
episódio, quadros resistentes, idosos ou presença de sintomas atípicos.
•
HEMOGRAMA COMPLETO
Avalia anemia e processos infecciosos ou inflamatórios que podem cursar
com fadiga e apatia.
•
TSH E T4 LIVRE
Essenciais para excluir hipotireoidismo, uma das principais causas clínicas
de depressão secundária.
•
Vitamina B12
Deficiência pode causar sintomas depressivos, cognitivos e neuropáticos.
•
GLICEMIA DE JEJUM
Avalia diabetes e hipoglicemias, que interferem no humor e energia.
•
FUNÇÃO RENAL (UREIA E CREATININA)
Importante antes do uso de antidepressivos e para excluir uremia.
•
FUNÇÃO HEPÁTICA (AST, ALT)
Avalia segurança para uso de psicofármacos.
Esses exames não confirmam depressão, mas são fundamentais para diagnóstico
diferencial e segurança terapêutica.
4. TRANSTORNO DEPRESSIVO PERSISTENTE -DISTIMIA (CID-10: F34.1)
Na distimia, o humor deprimido é crônico, com duração mínima de dois anos.
Devido ao caráter prolongado dos sintomas, a investigação laboratorial torna-se
ainda mais relevante, principalmente para descartar doenças endócrinas,
carenciais ou sistêmicas não diagnosticadas.
A solicitação de exames segue os mesmos princípios do transtorno depressivo
maior, devendo ser repetida periodicamente conforme evolução clínica.
5. TRANSTORNO DO HUMOR BIPOLAR(CID-10: F31)
O transtorno bipolar envolve episódios depressivos associados a episódios
maníacos ou hipomaníacos. O diagnóstico incorreto como depressão unipolar
pode levar a tratamento inadequado e piora clínica.
Nos quadros bipolares, os exames têm papel central tanto no diagnóstico
diferencial quanto no monitoramento terapêutico, especialmente pelo uso de
estabilizadores do humor.
6.EXAMES
Além dos exames básicos, deve-se atentar para exames relacionados ao
tratamento:
•
HEMOGRAMA COMPLETO
Importante antes do uso de valproato ou antipsicóticos.
•
TSH E T4 LIVRE
O lítio pode induzir hipotireoidismo.
•
FUNÇÃO RENAL (UREIA E CREATININA)
Obrigatória antes e durante o uso de lítio.
•
ELETRÓLITOS (SÓDIO, POTÁSSIO)
Alterações hidroeletrolíticas podem agravar instabilidade do humor.
•
FUNÇÃO HEPÁTICA
Necessária para uso de valproato e outros estabilizadores.
•
EXAMES TOXICOLÓGICOS
Indicados quando há suspeita de uso de substâncias psicoativas, que
podem mimetizar ou precipitar episódios maníacos.
7. TRANSTORNO CICLOTÍMICO( CID-10: F34.0)
Apesar de cursar com sintomas mais leves, o transtorno ciclotímico exige
investigação clínica semelhante ao transtorno bipolar, especialmente para afastar
causas clínicas de labilidade emocional e para acompanhamento longitudinal, já
que pode evoluir para bipolaridade franca.
8. COMPORTAMENTO SUICIDA
Em pacientes com ideação ou tentativa de suicídio, os exames complementares
auxiliam na avaliação global do paciente, identificando condiçõe…'),
  ('ansiedade', (SELECT id FROM categorias WHERE nome = 'Saúde Mental'), 'Transtornos de Ansiedade', 'F41', 'TRANSTORNO DE ANSIEDADE (CID-10: F41)
1. CONSIDERAÇÕES GERAIS
Os transtornos de ansiedade constituem um grupo de condições psiquiátricas
caracterizadas por medo, ansiedade e preocupação excessivos, persistentes e
desproporcionais ao estímulo, acompanhados de sintomas somáticos e
comportamentais. Incluem principalmente o transtorno de ansiedade
generalizada, transtorno de pânico, agorafobia, transtorno de ansiedade social e
fobias específicas.
O diagnóstico é clínico, baseado em critérios sindrômicos bem definidos.
Entretanto, a investigação laboratorial é fundamental para descartar causas
clínicas que mimetizam ansiedade, como doenças endócrinas, cardiológicas,
metabólicas, neurológicas e uso de substâncias, além de orientar a escolha e o
monitoramento do tratamento farmacológico.
2. TRANSTORNO DE ANSIEDADE GENERALIZADA (TAG)
O transtorno de ansiedade generalizada caracteriza-se por ansiedade e
preocupação excessivas, de difícil controle, presentes na maioria dos dias por pelo
menos seis meses, associadas a sintomas como inquietação, fadiga, dificuldade
de concentração, irritabilidade, tensão muscular e distúrbios do sono.
Pacientes com TAG frequentemente procuram a Atenção Primária com queixas
somáticas inespecíficas, como palpitações, dispneia, dor torácica, sintomas
gastrointestinais e cefaleia, o que torna obrigatória a exclusão de causas clínicas.
3.EXAMES
Os exames devem ser solicitados principalmente no primeiro episódio, em quadros
persistentes, em pacientes idosos ou quando há sintomas físicos proeminentes.
•
HEMOGRAMA COMPLETO
Avalia anemia e processos infecciosos ou inflamatórios.
•
TSH E T4 LIVRE
Essenciais para excluir hipertireoidismo e hipotireoidismo, causas
frequentes de ansiedade secundária.
•
GLICEMIA DE JEJUM
Avalia hipoglicemias e diabetes, que podem cursar com sintomas
autonômicos.
•
FUNÇÃO RENAL (UREIA E CREATININA)
Importante antes do início de psicofármacos.
•
FUNÇÃO HEPÁTICA (AST, ALT)
Avalia segurança para uso de antidepressivos e ansiolíticos.
•
VITAMINA B12
Deficiência pode cursar com sintomas neuropsiquiátricos.
4. TRANSTORNO DE PÂNICO (CID-10: F41.0)
O transtorno de pânico caracteriza-se pela ocorrência recorrente e inesperada de
ataques de pânico, acompanhados de medo persistente de novos episódios ou
mudanças comportamentais desadaptativas. Os ataques cursam com sintomas
intensos como taquicardia, dispneia, dor torácica, tontura e sensação de morte
iminente.
O diagnóstico diferencial com doenças cardiovasculares, respiratórias e
metabólicas é obrigatório, especialmente nos primeiros episódios.
5.EXAMES
•
ELETROCARDIOGRAMA
Fundamental para excluir arritmias e outras causas cardíacas.
•
TSH E T4 LIVRE
Hipertireoidismo pode mimetizar crises de pânico.
•
GLICEMIA CAPILAR OU DE JEJUM
Excluir hipoglicemia.
•
ELETRÓLITOS SÉRICOS
Alterações podem causar sintomas autonômicos.
•
EXAMES TOXICOLÓGICOS
Quando há suspeita de uso de estimulantes (cafeína, anfetaminas,
cocaína).
6. AGORAFOBIA (CID-10: F40.0)
A agorafobia caracteriza-se pelo medo intenso de situações em que escapar ou
obter ajuda possa ser difícil, frequentemente associada ao transtorno de pânico. O
paciente evita locais públicos, multidões ou ambientes fechados.
A investigação clínica segue os mesmos princípios do transtorno de pânico,
principalmente para excluir causas orgânicas associadas às crises ansiosas.
7. TRANSTORNO DE ANSIEDADE SOCIAL (CID-10: F40.1 )
O transtorno de ansiedade social caracteriza-se por medo intenso e persistente de
situações sociais ou de desempenho, associado ao receio de avaliação negativa.
Costuma iniciar precocemente e ter curso crônico.
Embora o diagnóstico seja clínico, deve-se excluir condições clínicas que agravem
tremores, sudorese ou taquicardia.
8.EXAMES
•
TSH e T4 livre
•
Hemograma completo
•
Glicemia
•
Avaliação clínica cardiovascular, quando indicado
9. FOBIAS ESPECÍFICAS (CID-10: F40.2)
As fobias específicas caracterizam-se por medo intenso e irracional diante de
objetos ou situações específicas, com pa…'),
  ('psicoticos', (SELECT id FROM categorias WHERE nome = 'Saúde Mental'), 'Transtornos Psicóticos / Esquizofrenia', 'F20/F23/F25', 'TRANSTORNOS PSICÓTICOS
1. CONSIDERAÇÕES GERAIS
Os transtornos psicóticos constituem um grupo heterogêneo de condições
psiquiátricas caracterizadas pela presença de sintomas psicóticos, como delírios,
alucinações, pensamento desorganizado e comportamento desorganizado ou
catatônico. A esquizofrenia é o principal transtorno desse grupo, mas também
incluem o transtorno psicótico breve, transtorno esquizofreniforme, transtorno
esquizoafetivo, transtorno delirante persistente e psicose puerperal.
O diagnóstico é essencialmente clínico, baseado em critérios do DSM-5-TR e da
CID-11. Entretanto, todo primeiro episódio psicótico deve ser considerado orgânico
até prova em contrário, tornando obrigatória uma investigação clínica e laboratorial
completa.
2. ESQUIZOFRENIA E TRANSTORNOS DO ESPECTRO (CID-10: F20)
A esquizofrenia é um transtorno psicótico crônico, geralmente de início na
adolescência tardia ou início da vida adulta, caracterizado por sintomas positivos,
negativos e prejuízo funcional progressivo. O diagnóstico exige a presença de
sintomas psicóticos por pelo menos seis meses (DSM-5-TR), com impacto
significativo na funcionalidade.
O diagnóstico diferencial inclui transtornos do humor com sintomas psicóticos,
psicose induzida por substâncias, condições neurológicas, metabólicas,
infecciosas e endocrinológicas.
3. TRANSTORNO PSICÓTICO BREVE E ESQUIZOFRENIFORME (CID-10: F23)
O transtorno psicótico breve caracteriza-se por sintomas psicóticos com duração
entre 1 e 30 dias, com recuperação completa. O transtorno esquizofreniforme
apresenta critérios semelhantes aos da esquizofrenia, porém com duração entre 1
e 6 meses.
Apesar do curso mais curto, a investigação clínica deve ser a mesma de um
primeiro surto psicótico, pois uma parcela significativa dos pacientes pode evoluir
posteriormente para esquizofrenia ou transtorno bipolar.
4. TRANSTORNO ESQUIZOAFETIVO (CID-10: F25)
O transtorno esquizoafetivo associa sintomas psicóticos persistentes a sintomas
afetivos significativos (depressivos ou maníacos) durante grande parte do curso da
doença. O diagnóstico diferencial com esquizofrenia e transtorno bipolar é
fundamental, pois impacta diretamente na escolha terapêutica.
5. TRANSTORNO DELIRANTE PERSISTENTE (CID-10: F22)
Caracteriza-se pela presença de delírios persistentes, geralmente não bizarros,
com preservação relativa da funcionalidade e da cognição. Alucinações são raras
ou ausentes. A investigação clínica visa principalmente excluir causas
neurológicas, infecciosas e metabólicas.
6. PSICOSE PUERPERAL (CID-10: F53.1)
A psicose puerperal é uma emergência psiquiátrica, ocorrendo geralmente nas
primeiras semanas do pós-parto, com delírios, agitação, insônia e comportamento
desorganizado. Está associada a alto risco de suicídio e infanticídio, exigindo
internação imediata e investigação clínica ampla.
7.EXAMES
AVALIAÇÃO INICIAL OBRIGATÓRIA (TODO PRIMEIRO EPISÓDIO PSICÓTICO)
•
Hemograma completo
•
Eletrólitos séricos (Na, K, Ca)
•
Glicemia de jejum
•
Função renal (ureia, creatinina)
•
Função hepática (AST, ALT)
•
TSH e T4 livre
•
Vitamina B12
•
Sorologias (HIV, sífilis)
•
Exame toxicológico
benzodiazepínicos)
(álcool,
cocaína,
AVALIAÇÃO NEUROLÓGICA (QUANDO INDICADO)
anfetaminas,
maconha,
•
Tomografia computadorizada ou ressonância magnética de crânio
•
Eletroencefalograma (suspeita de epilepsia)
•
Punção lombar (suspeita de infecção ou doença inflamatória do SNC)
AVALIAÇÃO ANTES DO USO DE ANTIPSICÓTICOS
•
ECG (avaliar QT)
•
Perfil lipídico
•
Glicemia ou hemoglobina glicada
MONITORAMENTO DURANTE O TRATAMENTO
•
Peso, IMC e circunferência abdominal
•
Glicemia e perfil lipídico
•
Função hepática
•
Hemograma (obrigatório em uso de clozapina)
8.CONSIDERAÇÕES FINAIS
Os transtornos psicóticos exigem abordagem clínica sistematizada e criteriosa,
especialmente nos primeiros episódios, em que a exclusão de causas orgânicas é
mandatória. A solicitação adequada de exames laboratoriais e de imagem não tem
objetivo diagnóstico direto do transtorno p…'),
  ('personalidade', (SELECT id FROM categorias WHERE nome = 'Saúde Mental'), 'Transtornos de Personalidade', 'F60', 'TRANSTORNOS DE PERSONALIDADE
CID: F60
1. CONSIDERAÇÕES GERAIS
Os transtornos de personalidade correspondem a padrões duradouros, inflexíveis
e desadaptativos de comportamento, cognição e funcionamento interpessoal, que
se iniciam precocemente, geralmente na adolescência ou início da vida adulta, e
permanecem estáveis ao longo da vida. Esses padrões desviam-se
significativamente das expectativas culturais e geram prejuízo funcional
importante.
A prevalência estimada dos transtornos de personalidade é elevada, podendo
alcançar até 20% da população geral, sendo frequentemente observados como
comorbidade em outros transtornos psiquiátricos. O diagnóstico é estritamente
clínico, fundamentado na história de vida do indivíduo, no padrão persistente de
funcionamento e nos critérios do DSM-5-TR e da CID-11.
É fundamental destacar que, por definição, os transtornos de personalidade não
requerem exames complementares para confirmação diagnóstica, pois não se
tratam de doenças orgânicas ou bioquímicas identificáveis por testes laboratoriais.
2. CLASSIFICAÇÃO
Segundo o DSM-5, os transtornos de personalidade são organizados em três
agrupamentos (clusters):
O Agrupamento A inclui os transtornos paranoide, esquizoide e esquizotípico,
caracterizados por comportamento excêntrico, isolamento social e desconfiança.
O Agrupamento B compreende os transtornos antissocial, borderline, histriônico e
narcisista, marcados por impulsividade, instabilidade emocional, comportamento
dramático e dificuldades nos relacionamentos interpessoais.
O Agrupamento C inclui os transtornos dependente, evitativo e obsessivocompulsivo de personalidade, caracterizados por ansiedade, medo, rigidez
comportamental e necessidade excessiva de controle ou aprovação.
3. DIAGNÓSTICO
O diagnóstico dos transtornos de personalidade é realizado exclusivamente por
avaliação clínica longitudinal, levando-se em consideração:
•
História de vida e padrões de relacionamento
•
Funcionamento interpessoal, afetivo e ocupacional
•
Início precoce e curso estável
•
Prejuízo funcional persistente
É imprescindível diferenciar transtornos de personalidade de transtornos do humor,
ansiedade, psicóticos e do uso de substâncias, bem como de alterações
comportamentais secundárias a doenças clínicas ou neurológicas.
4. PAPEL DOS EXAMES COMPLEMENTARES
Embora não sejam necessários para o diagnóstico, exames podem ser solicitados
apenas para exclusão de diagnósticos diferenciais, principalmente em situações
como:
•
Primeira avaliação psiquiátrica
•
Mudança recente de comportamento em adulto previamente funcional
•
Suspeita de condição médica ou neurológica associada
•
Uso de psicofármacos
5.EXAMES (APENAS PARA EXCLUSÃO DE CAUSAS ORGÂNICAS)
•
Hemograma completo
•
TSH e T4 livre
•
Função renal
•
Função hepática
•
Vitamina B12
•
Eletrólitos séricos
•
Exames toxicológicos (quando suspeita de uso de substâncias)
IMPORTANTE: esses exames não confirmam transtorno de personalidade e não
devem ser solicitados rotineiramente sem indicação clínica.
6. TRATAMENTO
O tratamento dos transtornos de personalidade baseia-se fundamentalmente na
psicoterapia, sendo a terapia cognitivo-comportamental, a terapia dialética
comportamental e a terapia interpessoal as abordagens mais utilizadas, a
depender do subtipo.
O uso de psicofármacos não trata o transtorno de personalidade em si, mas pode
ser útil no manejo de sintomas associados, como ansiedade, impulsividade,
instabilidade afetiva, agressividade ou sintomas depressivos. A prescrição deve ser
criteriosa, individualizada e sempre associada ao acompanhamento psicoterápico.
A adesão ao tratamento pode ser limitada, especialmente em alguns subtipos,
exigindo vínculo terapêutico consistente e acompanhamento prolongado.
7.CONSIDERAÇÕES FINAIS
Os transtornos de personalidade representam condições psiquiátricas crônicas, de
diagnóstico exclusivamente clínico, com grande impacto funcional e social. A
compreensão de que não se trata de uma doença diagnosticável por exames, mas
sim d…'),
  ('has', (SELECT id FROM categorias WHERE nome = 'Cardiologia'), 'Hipertensão Arterial Sistêmica (HAS)', 'I10', 'HIPERTENSÃO ARTERIAL SISTÊMICA (HAS)
CID: I10
1. CONCEITO E IMPORTÂNCIA CLÍNICA
A hipertensão arterial sistêmica é uma condição clínica multifatorial, caracterizada
por elevação sustentada da pressão arterial sistólica ≥ 140 mmHg e/ou diastólica ≥
90 mmHg, medida de forma adequada. Trata-se de um dos principais fatores de
risco modificáveis para doença cardiovascular, sendo fortemente associada a AVC,
infarto agudo do miocárdio, insuficiência cardíaca, doença renal crônica e morte
prematura.
A HAS é altamente prevalente, frequentemente assintomática e subdiagnosticada,
o que reforça a necessidade de rastreamento sistemático e acompanhamento
longitudinal.
2. DIAGNÓSTICO DA HIPERTENSÃO ARTERIAL
O diagnóstico da HAS baseia-se na aferição correta da pressão arterial em
consultório, devendo ser confirmada por medidas repetidas em diferentes
ocasiões. Considera-se HAS quando a PA permanece ≥ 140/90 mmHg em pelo
menos duas visitas distintas.
Em situações específicas — como valores ≥ 180/110 mmHg ou PA ≥ 140/90 mmHg
associada a alto risco cardiovascular — o diagnóstico pode ser estabelecido em
uma única consulta.
A confirmação diagnóstica deve, sempre que possível, ser realizada com medidas
fora do consultório, por meio da monitorização ambulatorial da pressão arterial
(MAPA) ou monitorização residencial da pressão arterial (MRPA), especialmente
para afastar hipertensão do avental branco e identificar hipertensão mascarada.
3. CLASSIFICAÇÃO DA PRESSÃO ARTERIAL
A classificação da pressão arterial segue a Diretriz Brasileira de Hipertensão, sendo
fundamental para estratificação de risco e decisão terapêutica. Sempre deve ser
considerada a pior categoria quando PAS e PAD estiverem em faixas diferentes.
4. AVALIAÇÃO CLÍNICA DO PACIENTE HIPERTENSO
Após o diagnóstico, todo paciente hipertenso deve ser submetido a avaliação
clínica detalhada, com foco na identificação de fatores de risco cardiovasculares
associados, lesão de órgãos-alvo e doenças cardiovasculares ou renais
estabelecidas.
A avaliação clínica inclui anamnese direcionada (tempo de diagnóstico, adesão ao
tratamento, história familiar, hábitos de vida) e exame físico completo, com atenção
especial para peso, IMC, circunferência abdominal, pulsos periféricos, ausculta
cardíaca e sinais de complicações da hipertensão.
5. ESTRATIFICAÇÃO DO RISCO CARDIOVASCULAR
A estratificação do risco cardiovascular é etapa fundamental no manejo da HAS e
considera três elementos principais:
1. níveis pressóricos,
2. presença de fatores de risco adicionais,
3. presença de lesão de órgão-alvo ou doença cardiovascular/renal
estabelecida.
Pacientes com diabetes mellitus, doença cardiovascular estabelecida, doença
renal crônica ou lesão de órgão-alvo já são automaticamente classificados como
alto risco cardiovascular, independentemente do estágio da hipertensão.
6. TRATAMENTO DA HIPERTENSÃO ARTERIAL
6.1 TRATAMENTO NÃO MEDICAMENTOSO
O tratamento não medicamentoso deve ser indicado para todos os pacientes,
independentemente do estágio da HAS ou do uso de medicamentos. Inclui
mudanças no estilo de vida, com destaque para redução do consumo de sal,
controle do peso, prática regular de atividade física, cessação do tabagismo,
consumo moderado de álcool e adoção da dieta DASH.
Essas medidas reduzem significativamente os níveis pressóricos e o risco
cardiovascular global.
6.2 TRATAMENTO MEDICAMENTOSO
O tratamento farmacológico deve ser iniciado em todos os pacientes com
hipertensão estabelecida. A meta pressórica universal recomendada é PA < 130/80
mmHg, desde que bem tolerada.
As classes de primeira linha, com maior evidência de redução de eventos
cardiovasculares, são:
•
diuréticos tiazídicos,
•
inibidores da ECA ou bloqueadores do receptor da angiotensina (IECA/BRA),
•
bloqueadores dos canais de cálcio.
Na maioria dos pacientes, recomenda-se iniciar tratamento com associação de
duas drogas, preferencialmente em comprimido único, devido a maior eficácia,
melhor adesão e menor inércia terapêutica. A monoterap…'),
  ('has_secundaria', (SELECT id FROM categorias WHERE nome = 'Cardiologia'), 'Hipertensão Arterial Secundária', 'I15', 'HIPERTENSÃO ARTERIAL SISTÊMICA SECUNDÁRIA
CID-10: I15
1. DEFINIÇÃO
A hipertensão arterial sistêmica secundária é aquela decorrente de uma causa
identificável, diferentemente da hipertensão primária (essencial). Representa
cerca de 5–10% dos casos de hipertensão, porém possui grande relevância clínica
por ser potencialmente reversível quando a etiologia de base é adequadamente
tratada.
2. QUANDO SUSPEITAR DE HIPERTENSÃO SECUNDÁRIA
A investigação de hipertensão secundária deve ser considerada principalmente em
pacientes com características clínicas sugestivas, como hipertensão de difícil
controle, início precoce ou tardio e sinais de doenças sistêmicas associadas.
São situações clássicas de suspeição:
•
Hipertensão resistente ou refratária
•
Início da hipertensão antes dos 30 anos
•
Início súbito de hipertensão após os 50–55 anos
•
Hipertensão estágio 3 de início abrupto
•
Hipopotassemia espontânea ou induzida por diuréticos
•
Piora da função renal após uso de IECA ou BRA
•
Crises hipertensivas recorrentes
•
Presença de sinais clínicos sugestivos de endocrinopatias
•
Alterações urinárias, redução do ritmo de filtração glomerular ou achados
anormais de imagem renal
3. PRINCIPAIS CAUSAS DE HIPERTENSÃO ARTERIAL SECUNDÁRIA
As causas de hipertensão secundária podem ser divididas em não endócrinas,
endócrinas e medicamentosas.
3.1 CAUSAS NÃO ENDÓCRINAS
A doença renal parenquimatosa é uma das causas mais frequentes e deve ser
sempre considerada em pacientes com alterações urinárias, creatinina elevada ou
redução da taxa de filtração glomerular.
A hipertensão renovascular ocorre por estenose das artérias renais, sendo mais
comumente causada por aterosclerose (idosos) ou displasia fibromuscular
(mulheres jovens). Deve ser suspeitada diante de sopro abdominal, edema agudo
de pulmão de repetição ou deterioração da função renal após bloqueio do SRAA.
A apneia obstrutiva do sono é atualmente considerada uma das principais causas
de hipertensão secundária, especialmente em pacientes com hipertensão
resistente, obesidade, ronco e sonolência diurna.
A coarctação da aorta deve ser lembrada principalmente em pacientes jovens,
com diferença de pressão arterial entre membros superiores e inferiores e pulsos
femorais diminuídos ou ausentes.
3.2 CAUSAS ENDÓCRINAS
O hiperaldosteronismo primário é uma das causas endócrinas mais frequentes de
hipertensão secundária, caracterizado por hipertensão associada ou não à
hipopotassemia.
O feocromocitoma cursa com crises paroxísticas de hipertensão associadas a
cefaleia, sudorese e palpitações, podendo evoluir com crises hipertensivas graves.
Distúrbios tireoidianos, como hipotireoidismo e hipertireoidismo, podem cursar
com elevação pressórica, especialmente da pressão diastólica no hipotireoidismo
e da sistólica no hipertireoidismo.
Outras causas incluem síndrome de Cushing, hiperparatireoidismo primário,
acromegalia e obesidade, todas associadas a mecanismos específicos de
elevação da pressão arterial.
3.3 CAUSAS MEDICAMENTOSAS
Diversos fármacos podem elevar a pressão arterial, como anti-inflamatórios não
esteroidais, corticosteroides, anticoncepcionais hormonais, descongestionantes
nasais, antidepressivos, imunossupressores e drogas ilícitas (ex.: cocaína).
4. CONDUTA GERAL
O manejo da hipertensão arterial secundária baseia-se em três pilares:
1. Controle pressórico adequado
2. Investigação etiológica direcionada
3. Tratamento específico da causa de base
Mesmo após o tratamento da etiologia, alguns pacientes podem permanecer
hipertensos, exigindo seguimento clínico contínuo.
5.EXAMES
AVALIAÇÃO INICIAL (OBRIGATÓRIA EM TODA SUSPEITA)
•
Creatinina sérica
•
Taxa de filtração glomerular estimada
•
Urina tipo I
•
Potássio sérico
INVESTIGAÇÃO DE CAUSAS NÃO ENDÓCRINAS
•
Ultrassom de rins e vias urinárias
•
Ultrassom Doppler de artérias renais
•
Renograma com captopril
•
Angiotomografia ou angiorressonância de artérias renais
•
Polissonografia (suspeita de AOS)
•
Ecocardiograma e angiotomografia de aorta (suspeita de…'),
  ('ic', (SELECT id FROM categorias WHERE nome = 'Cardiologia'), 'Insuficiência Cardíaca (IC)', 'I50', 'INSUFICIÊNCIA CARDÍACA (IC)
CID-10: I50
1. DEFINIÇÃO
A insuficiência cardíaca é uma síndrome clínica complexa, caracterizada pela
incapacidade do coração de bombear sangue de forma adequada às demandas
metabólicas do organismo ou de fazê-lo apenas às custas de elevação das
pressões de enchimento. Resulta de alterações estruturais e/ou funcionais do
coração, levando a sintomas típicos como dispneia, fadiga e retenção hídrica.
2. CLASSIFICAÇÃO
Do ponto de vista terapêutico, a insuficiência cardíaca é classificada
principalmente de acordo com a fração de ejeção do ventrículo esquerdo (FEVE):
•
Insuficiência cardíaca com fração de ejeção reduzida (ICFER): FEVE < 40%
•
Insuficiência cardíaca com fração de ejeção levemente reduzida (ICFEi):
FEVE 40–49%
•
Insuficiência cardíaca com fração de ejeção preservada (ICFEP): FEVE ≥ 50%
Essa classificação é fundamental, pois define o tratamento e o prognóstico.
3. QUADRO CLÍNICO
Os sintomas decorrem da redução do débito cardíaco e da congestão sistêmica e
pulmonar. São comuns dispneia aos esforços ou em repouso, ortopneia, dispneia
paroxística noturna, edema de membros inferiores, ganho ponderal rápido, fadiga e
intolerância ao exercício. Em fases avançadas, podem ocorrer hipotensão,
confusão mental e sinais de hipoperfusão periférica.
4. DIAGNÓSTICO
O diagnóstico da insuficiência cardíaca é clínico, apoiado por exames laboratoriais
e de imagem que confirmam a disfunção cardíaca, avaliam a gravidade, identificam
a etiologia e monitoram a resposta ao tratamento. A ecocardiografia é o exame
central para confirmação diagnóstica, pois permite avaliar a fração de ejeção,
alterações estruturais, função valvar e pressões intracardíacas.
5. INVESTIGAÇÃO ETIOLÓGICA
Após o diagnóstico, é essencial identificar a causa da insuficiência cardíaca, que
pode incluir cardiopatia isquêmica, hipertensão arterial sistêmica, valvopatias,
miocardiopatias, doenças infecciosas, cardiotoxicidade por drogas, distúrbios
endócrinos e doenças sistêmicas. A investigação adequada orienta o tratamento
específico e impacta diretamente no prognóstico.
6. MONITORIZAÇÃO E ACOMPANHAMENTO
O acompanhamento do paciente com insuficiência cardíaca deve ser contínuo,
com avaliação clínica seriada, controle de sintomas, monitorização laboratorial e
reavaliação periódica da função cardíaca. Marcadores laboratoriais, como os
peptídeos natriuréticos, auxiliam na avaliação prognóstica e na resposta ao
tratamento, especialmente em pacientes com ICFER.
7.EXAMES
EXAMES INICIAIS (OBRIGATÓRIOS NA SUSPEITA DE IC)
•
Ecocardiograma transtorácico
•
Eletrocardiograma
•
Radiografia de tórax
•
Hemograma
•
Função renal (ureia e creatinina)
•
Sódio e potássio séricos
•
Glicemia de jejum e HbA1c
•
TSH
•
Transaminases
•
Urina tipo I
MARCADORES ESPECÍFICOS
•
BNP ou NT-proBNP (diagnóstico, gravidade e prognóstico)
INVESTIGAÇÃO ETIOLÓGICA DIRECIONADA
•
Teste ergométrico ou cintilografia miocárdica
•
Angiotomografia coronariana ou cineangiocoronariografia
•
Ressonância magnética cardíaca
•
Sorologias (quando suspeita infecciosa)
•
Perfil lipídico
MONITORIZAÇÃO EVOLUTIVA
•
Repetição periódica do ecocardiograma
•
Eletrólitos séricos após ajustes terapêuticos
•
Função renal seriada
8.CONSIDERAÇÕES FINAIS
A insuficiência cardíaca representa uma das principais causas de
morbimortalidade cardiovascular, sendo fundamental seu reconhecimento
precoce e manejo adequado. A correta solicitação e interpretação dos exames
complementares permitem confirmar o diagnóstico, classificar a síndrome,
identificar a etiologia e orientar o tratamento de forma individualizada.
A ecocardiografia e os peptídeos natriuréticos são pilares do diagnóstico e
acompanhamento. O seguimento estruturado, aliado à otimização terapêutica e ao
acompanhamento multiprofissional, reduz hospitalizações, melhora a qualidade
de vida e impacta positivamente na sobrevida dos pacientes.'),
  ('fibrilacao', (SELECT id FROM categorias WHERE nome = 'Cardiologia'), 'Fibrilação Atrial e Flutter Atrial', 'I48', 'FIBRILAÇÃO ATRIAL E FLUTTER ATRIAL
CID-10: I48
A fibrilação atrial (FA) e o flutter atrial são as arritmias supraventriculares
sustentadas mais frequentes na prática clínica, com elevada relevância tanto em
provas quanto na assistência médica, principalmente pelo risco aumentado de
eventos tromboembólicos, em especial o acidente vascular encefálico (AVE).
Ambas decorrem de distúrbios na atividade elétrica atrial, levando à perda da
contração atrial efetiva e à irregularidade da resposta ventricular.
A fibrilação atrial caracteriza-se por atividade elétrica atrial desorganizada, com
múltiplos focos de reentrada, resultando em ritmo irregularmente irregular. Já o
flutter atrial é causado por um circuito de macrorreentrada, geralmente localizado
no istmo cavotricuspídeo, produzindo uma atividade atrial organizada, porém
rápida, tipicamente em torno de 300 bpm.
Clinicamente, os pacientes podem apresentar palpitações, dispneia, fadiga,
tontura, dor torácica ou até descompensação de insuficiência cardíaca. Em alguns
casos, o diagnóstico é incidental, identificado em exames de rotina. A ausência de
contração atrial eficaz favorece a estase sanguínea, especialmente no apêndice
atrial esquerdo, aumentando o risco de trombose e embolização sistêmica.
O diagnóstico é exclusivamente eletrocardiográfico. Na fibrilação atrial, observa-se
ausência de ondas P definidas, presença de ondas fibrilatórias e intervalos RR
irregularmente irregulares. No flutter atrial, identifica-se o clássico padrão em
“dente de serrote” (ondas F), principalmente nas derivações inferiores (DII, DIII e
aVF) e em V1, com frequência ventricular frequentemente em múltiplos de 300
(150, 100, 75 bpm).
A estratificação do risco tromboembólico é etapa fundamental no manejo. O
escore CHA₂DS₂-VASc é utilizado para definir a necessidade de anticoagulação,
sendo que pacientes com FA valvar (estenose mitral moderada a grave ou prótese
valvar mecânica) devem ser anticoagulados independentemente do escore. O risco
de sangramento pode ser avaliado pelo HAS-BLED, que auxilia na identificação de
pacientes que necessitam de maior vigilância, sem contraindicar isoladamente a
anticoagulação.
O tratamento envolve três pilares: prevenção de eventos tromboembólicos,
controle da frequência cardíaca e controle do ritmo, sendo este último indicado de
forma individualizada. Em situações de instabilidade hemodinâmica, a
cardioversão elétrica sincronizada é mandatória. Nos pacientes estáveis, pode-se
optar pelo controle da frequência ou pela tentativa de reversão do ritmo,
respeitando o tempo de início da arritmia e a presença ou não de anticoagulação
adequada.
No flutter atrial típico, a ablação por cateter apresenta altas taxas de sucesso e
caráter potencialmente curativo, diferentemente da fibrilação atrial, na qual a
ablação reduz sintomas e recorrência, mas não é considerada curativa definitiva.
EXAMES
EXAMES PARA DIAGNÓSTICO
•
Eletrocardiograma (ECG) de 12 derivações
•
Holter de 24 horas (quando FA paroxística suspeita)
•
Monitor de eventos (em casos selecionados)
Exames para estratificação e investigação etiológica
•
Ecocardiograma transtorácico
•
Ecocardiograma transesofágico (se cardioversão e suspeita de trombo
intracavitário)
•
Função renal (creatinina, clearance)
•
Função hepática
•
Eletrólitos séricos (Na⁺, K⁺, Mg²⁺)
•
TSH (rastrear disfunção tireoidiana)
Exames relacionados à anticoagulação
•
INR (pacientes em uso de varfarina)
•
Hemograma completo
•
Avaliação de risco tromboembólico (CHA₂DS₂-VASc)
•
Avaliação de risco hemorrágico (HAS-BLED)
CONSIDERAÇÕES FINAIS
A fibrilação atrial e o flutter atrial são condições de alta prevalência e impacto
clínico significativo, exigindo abordagem sistematizada e individualizada. O correto
reconhecimento eletrocardiográfico, aliado à adequada estratificação do risco
tromboembólico, é essencial para prevenir complicações graves, como o AVE
cardioembólico. A anticoagulação deve ser baseada no CHA₂DS₂-VASc,
independentemente da estratégia de con…'),
  ('litiase', (SELECT id FROM categorias WHERE nome = 'Nefrologia'), 'Litíase Renal', 'N20', 'LITÍASE RENAL
CID-10: N20
A litíase renal é uma condição de alta prevalência na população adulta, com
incidência crescente nas últimas décadas e elevada taxa de recorrência, podendo
atingir cerca de 50% dos pacientes em até 10 anos após o primeiro episódio. Tratase de patologia relevante tanto no atendimento ambulatorial quanto em situações
de urgência, especialmente quando associada à cólica renal, obstrução do trato
urinário ou infecção urinária concomitante.
AVALIAÇÃO INICIAL DO PACIENTE COM SUSPEITA DE LITÍASE RENAL
A abordagem inicial deve basear-se em anamnese detalhada e exame físico
cuidadoso. Deve-se investigar início súbito de dor, intensidade, irradiação,
lateralidade, presença de náuseas e vômitos, sintomas urinários associados,
episódios prévios de litíase, história familiar, uso de medicações predisponentes e
comorbidades como obesidade, gota e doenças metabólicas.
A dor típica da cólica renal é intensa, lancinante, de início súbito, geralmente
unilateral e sem posição antálgica. A localização e a irradiação da dor variam
conforme a posição do cálculo no trato urinário, podendo acometer flanco,
abdome, hipogástrio, região inguinal, testículos ou grandes lábios. Sintomas
urinários irritativos sugerem cálculo próximo à junção ureterovesical.
EXAMES LABORATORIAIS NA SUSPEITA DE LITÍASE RENAL
Os exames de imagem são fundamentais para confirmação diagnóstica, definição
da localização do cálculo e avaliação de complicações, como hidronefrose. A
ultrassonografia do trato urinário é amplamente utilizada como exame inicial,
especialmente em gestantes e pacientes jovens, permitindo identificar cálculos
renais e alterações secundárias à obstrução. Entretanto, sua sensibilidade é
limitada para cálculos localizados no ureter médio. Nesses casos, a tomografia
computadorizada sem contraste constitui o exame padrão-ouro, com alta
sensibilidade e especificidade para todos os tipos de cálculo.
O tratamento definitivo depende do tamanho, localização do cálculo, presença de
infecção, grau de obstrução e resposta clínica ao tratamento inicial. Cálculos
pequenos, especialmente no ureter distal, podem ser manejados com terapia
medicamentosa expulsiva. Já os casos complicados, refratários ou associados a
infecção exigem avaliação urológica imediata.
A investigação metabólica é indicada em pacientes com recorrência de cálculos,
história familiar positiva, cálculos bilaterais, doenças metabólicas associadas ou
apresentação em idade jovem. Essa investigação deve ser realizada após a
resolução da crise aguda, quando o metabolismo urinário estiver estabilizado.
EXAMES INDICADOS NA LITÍASE RENAL
Exames laboratoriais iniciais
•
Hemograma completo, para avaliação de leucocitose e suspeita de infecção
associada
•
Ureia e creatinina séricas, para avaliação da função renal
•
Urina tipo I, com atenção especial à presença de hematúria, leucócitos e
esterase leucocitária
•
Urocultura, sempre que houver sinais clínicos ou laboratoriais de infecção
urinária
Exames de imagem
•
Ultrassonografia do trato urinário, como exame inicial, especialmente em
gestantes, pacientes jovens e para avaliação de hidronefrose
•
Tomografia computadorizada de abdome e pelve sem contraste, exame
padrão-ouro para confirmação diagnóstica, localização do cálculo e
avaliação de obstrução
•
Radiografia simples de abdome, apenas em casos selecionados, para
seguimento de cálculos radiopacos
Exames para investigação metabólica (realizar após 4 semanas da crise)
•
•
Urina de 24 horas para dosagem de:
o
Cálcio
o
Oxalato
o
Citrato
o
Ácido úrico
o
Sódio
o
Fósforo
Exames séricos:
o
Cálcio
o
Fósforo
o
Ácido úrico
o
Paratormônio (PTH)
o
Vitamina D
Exames complementares específicos
•
Análise cristalográfica do cálculo, quando disponível, para definição da
composição e direcionamento da profilaxia
PROFILAXIA E SEGUIMENTO
A prevenção da recorrência baseia-se principalmente em medidas dietéticas e
comportamentais. Recomenda-se aumento da ingestão hídrica com objetivo de
manter densidade uriná…'),
  ('itu', (SELECT id FROM categorias WHERE nome = 'Nefrologia'), 'Infecção do Trato Urinário (ITU)', 'N39.0', 'INFECÇÃO DO TRATO URINÁRIO
CID-10: N39.0
1.CONCEITO
A infecção do trato urinário (ITU) é definida pela presença de microrganismos
patogênicos em qualquer segmento do trato urinário — uretra, bexiga, ureteres ou
rins — podendo estar associada ou não a manifestações clínicas. Trata-se da
segunda infecção mais frequente na prática clínica, com elevada prevalência em
mulheres, especialmente em idade reprodutiva, no período pós-menopausa e em
pacientes com comorbidades, como diabetes mellitus.
A classificação atual da ITU foi simplificada, permitindo abordagem clínica mais
objetiva. Considera-se infecção não complicada quando restrita à bexiga, cursando
apenas com sintomas urinários baixos, e infecção complicada quando há
acometimento além da bexiga, como nos casos de pielonefrite, ITU febril,
bacterêmica, associada a cateter vesical ou situações com maior risco de
complicações sistêmicas.
2.CLASSIFICAÇÃO CLÍNICA
A cistite corresponde à infecção urinária baixa ou não complicada. Manifesta-se
tipicamente por disúria, polaciúria, urgência miccional, dor suprapúbica e,
ocasionalmente, hematúria. Em mulheres jovens, o diagnóstico é essencialmente
clínico, desde que não haja febre, dor lombar, náuseas, vômitos ou corrimento
vaginal. Nesses casos, não há necessidade de exames laboratoriais para início do
tratamento.
A pielonefrite corresponde à infecção urinária alta ou complicada e caracteriza-se
por sintomas sistêmicos, como febre, calafrios, mal-estar geral, mialgia, náuseas e
vômitos, associados ou não a dor lombar e sinal de Giordano positivo. Nesse
cenário, a infecção ultrapassa a bexiga e acomete o parênquima renal, exigindo
investigação laboratorial completa e, frequentemente, internação hospitalar.
A bacteriúria assintomática é definida pela presença de bactérias na urina, com ou
sem piúria, na ausência de sinais e sintomas urinários. Essa condição não deve ser
tratada, exceto em três situações específicas: gestantes, pacientes submetidos a
procedimentos urológicos invasivos e transplantados renais.
A infecção urinária recorrente é caracterizada pela ocorrência de dois episódios em
seis meses ou três episódios em um ano. Nesses casos, além do tratamento do
episódio agudo, deve-se investigar fatores predisponentes e considerar estratégias
de profilaxia.
3.ETIOLOGIA
Do ponto de vista microbiológico, a Escherichia coli é o principal agente etiológico,
responsável por cerca de 70–80% dos casos. Outros microrganismos
frequentemente envolvidos incluem Klebsiella spp., Proteus spp., Pseudomonas
spp. e Enterococcus spp. A identificação do agente torna-se especialmente
relevante nos quadros complicados, recorrentes ou associados à falha terapêutica.
4.DIAGNÓSTICO
O diagnóstico da ITU baseia-se na correlação entre quadro clínico e exames
laboratoriais, quando indicados. O exame de urina tipo I é ferramenta fundamental,
porém seus achados devem sempre ser interpretados em conjunto com a clínica.
A presença de leucócitos e piúria é comum na infecção urinária. O nitrito positivo
sugere infecção por bactérias redutoras de nitrato, mas sua ausência não exclui o
diagnóstico. Na pielonefrite, podem ser observados cilindros leucocitários,
sugestivos de acometimento renal.
A urocultura é indicada nos casos de ITU complicada, pielonefrite, recorrência,
falha terapêutica e em grupos especiais, permitindo identificação do agente e teste
de sensibilidade antimicrobiana.
5.EXAMES INDICADOS NA INFECÇÃO DO TRATO URINÁRIO
Exames laboratoriais básicos
•
Urina tipo I (EAS ou sumário de urina), com avaliação de leucócitos, piúria,
hematúria, esterase leucocitária e nitrito
•
Hemograma completo, especialmente na ITU complicada
•
Ureia e creatinina séricas, principalmente na pielonefrite, idosos e pacientes
com comorbidades
Urocultura
•
Indicada em:
o
ITU complicada
o
Pielonefrite
o
ITU recorrente
•
o
Gestantes
o
Homens
o
Falha terapêutica
o
Suspeita de resistência bacteriana
Considerada significativa quando ≥ 10⁵ UFC/mL
Exames de imagem
•
•
Ultrassonografia d…'),
  ('lra', (SELECT id FROM categorias WHERE nome = 'Nefrologia'), 'Lesão Renal Aguda (LRA)', 'N17', 'LESÃO RENAL AGUDA
CID-10: N17
CONCEITO
A lesão renal aguda (LRA) é definida como a redução abrupta da função renal,
levando à incapacidade do rim de manter a homeostase hidroeletrolítica, ácidobase e a excreção adequada de metabólitos nitrogenados. Trata-se de uma
condição frequente no ambiente hospitalar, especialmente em pacientes críticos,
estando associada a elevada morbimortalidade e aumento do risco de progressão
para doença renal crônica.
Segundo os critérios do KDIGO, a LRA é caracterizada por aumento da creatinina
sérica ≥ 0,3 mg/dL em até 48 horas, ou aumento ≥ 1,5 vez o valor basal em até 7
dias, ou débito urinário < 0,5 mL/kg/h por pelo menos 6 horas. A gravidade do
quadro é estratificada em estágios, sendo diretamente proporcional ao risco de
complicações e mortalidade.
CLASSIFICAÇÃO ETIOLÓGICA
A LRA é classificada de acordo com o mecanismo fisiopatológico em pré-renal,
renal (intrínseca) e pós-renal.
A LRA pré-renal decorre de hipoperfusão renal, geralmente reversível, causada por
hipovolemia, insuficiência cardíaca, sepse ou uso de fármacos que alteram a
hemodinâmica glomerular. Nessa situação, não há lesão estrutural inicial do
parênquima renal.
A LRA renal (intrínseca) ocorre quando há dano direto às estruturas renais, podendo
acometer vasos, glomérulos, túbulos ou interstício. A causa mais frequente é a
necrose tubular aguda, secundária à isquemia prolongada ou nefrotoxicidade
medicamentosa.
A LRA pós-renal resulta da obstrução do trato urinário, bilateral ou em rim único
funcionante, levando ao aumento da pressão intratubular e redução da taxa de
filtração glomerular. O diagnóstico e a reversão precoces são fundamentais para
evitar dano renal permanente.
MANIFESTAÇÕES CLÍNICAS
As manifestações clínicas da LRA são variáveis e dependem da gravidade e da
etiologia. Podem incluir oligúria ou anúria, edema, dispneia por sobrecarga
volêmica, alterações do nível de consciência, náuseas, vômitos e sinais de
distúrbios eletrolíticos, especialmente hipercalemia. Em muitos casos, a LRA é
inicialmente assintomática, sendo detectada apenas por alterações laboratoriais.
DIAGNÓSTICO
O diagnóstico da LRA baseia-se na variação da creatinina sérica e no débito
urinário, não sendo recomendada a utilização da ureia ou de fórmulas de estimativa
da taxa de filtração glomerular para esse fim. A investigação etiológica deve ser
sistemática, buscando diferenciar as causas pré-renais, renais e pós-renais, uma
vez que a conduta depende diretamente do mecanismo envolvido.
EXAMES INDICADOS NA LESÃO RENAL AGUDA
Exames laboratoriais obrigatórios
•
Creatinina sérica seriada
•
Débito urinário (monitorização horária quando indicado)
•
Ureia (avaliar contexto clínico, não diagnóstica isoladamente)
•
Eletrólitos séricos: potássio, sódio, cálcio, fósforo e magnésio
•
Gasometria arterial ou venosa (avaliação de acidose metabólica)
Exames urinários
•
Urina tipo I (EAS), com avaliação de:
o
Densidade urinária
o
Proteinúria
o
Hematúria
o
Cilindros urinários
•
Sódio urinário e cálculo da fração de excreção de sódio (FENa), quando
indicado
•
Fração de excreção de ureia, especialmente em pacientes em uso de
diuréticos
Exames de imagem
•
Ultrassonografia de rins e vias urinárias (exame inicial obrigatório para
afastar causa pós-renal)
•
Tomografia computadorizada, quando suspeita de complicações ou
diagnóstico não esclarecido
Exames específicos conforme suspeita clínica
•
CPK sérica (suspeita de rabdomiólise)
•
Sorologias e exames imunológicos (suspeita de glomerulopatias)
•
Hemoculturas e marcadores infecciosos (suspeita de sepse)
TRATAMENTO
O tratamento da LRA baseia-se fundamentalmente na identificação e correção da
causa de base, não havendo terapia específica capaz de reverter diretamente a
lesão renal. A abordagem inicial deve priorizar a suspensão de agentes
nefrotóxicos, a correção de distúrbios hemodinâmicos e a manutenção da
euvolemia.
Na LRA pré-renal, a reposição volêmica com soluções cristaloides é a principal
medida, desde que não haja co…'),
  ('drc', (SELECT id FROM categorias WHERE nome = 'Nefrologia'), 'Doença Renal Crônica (DRC)', 'N18', 'DOENÇA RENAL CRÔNICA (DRC)
CID-10: N18
CONCEITO
A Doença Renal Crônica (DRC) é caracterizada pela perda progressiva, irreversível
e geralmente silenciosa da função renal, resultante da substituição do parênquima
renal normal por tecido fibroso. Essa perda funcional leva a distúrbios metabólicos,
hidroeletrolíticos, hormonais e à retenção de toxinas urêmicas, com repercussões
sistêmicas significativas.
Define-se DRC pela presença de taxa de filtração glomerular (TFG) < 60
mL/min/1,73 m² e/ou alterações estruturais ou funcionais renais (especialmente
albuminúria) persistentes por período igual ou superior a 3 meses,
independentemente da etiologia. O critério temporal é fundamental para
diferenciar DRC de lesão renal aguda.
CLASSIFICAÇÃO E ESTADIAMENTO
A DRC é classificada de acordo com a taxa de filtração glomerular e o grau de
albuminúria, parâmetros que permitem estimar o risco de progressão da doença e
de eventos cardiovasculares. À medida que a TFG reduz e a albuminúria aumenta,
eleva-se o risco de evolução para insuficiência renal terminal.
Os estágios iniciais concentram-se em estratégias de prevenção e retardo da
progressão, enquanto os estágios avançados demandam manejo intensivo das
complicações e preparo para terapia renal substitutiva.
ETIOLOGIA
As principais causas de DRC incluem hipertensão arterial sistêmica, diabetes
mellitus, glomerulonefrites crônicas e doença renal policística. No Brasil, a
hipertensão arterial é a principal etiologia, seguida do diabetes mellitus. Em parcela
significativa dos pacientes, a etiologia permanece indeterminada.
MANIFESTAÇÕES CLÍNICAS
A DRC é frequentemente assintomática nos estágios iniciais. Com a progressão da
perda da função renal, surgem manifestações decorrentes da retenção de solutos
e da disfunção endócrina renal, como edema, hipertensão arterial, anemia,
distúrbios do metabolismo mineral e ósseo, acidose metabólica, hipercalemia e
sintomas urêmicos (fadiga, inapetência, náuseas, alterações neurológicas).
DIAGNÓSTICO
O diagnóstico da DRC baseia-se na avaliação seriada da função renal, na pesquisa
de albuminúria/proteinúria e na identificação de alterações estruturais renais,
especialmente por exames de imagem. A estimativa da TFG deve ser realizada por
fórmulas validadas, sendo a creatinina isolada inadequada para esse fim.
EXAMES
Avaliação da função renal
•
Creatinina sérica seriada
•
Estimativa da TFG por fórmulas validadas (CKD-EPI ou MDRD)
•
Ureia (auxiliar, não isoladamente diagnóstica)
Avaliação urinária
•
Urina tipo I (EAS)
•
Albuminúria (relação albumina/creatinina urinária ou albumina 24h)
•
Proteinúria de 24 horas, quando indicada
Avaliação de complicações metabólicas
•
Potássio sérico
•
Sódio sérico
•
Cálcio sérico
•
Fósforo sérico
•
Magnésio
•
Gasometria (avaliação de acidose metabólica)
Avaliação hematológica e hormonal
•
Hemograma completo
•
Ferritina
•
Saturação de transferrina
•
Paratormônio (PTH)
•
Vitamina D (25-OH)
Exames de imagem
•
Ultrassonografia de rins e vias urinárias
o
Avaliação do tamanho renal
o
Ecogenicidade aumentada
o
Redução da espessura cortical
Avaliação cardiovascular associada
•
Perfil lipídico
•
Eletrocardiograma
•
Avaliação pressórica seriada
TRATAMENTO
O tratamento da DRC é predominantemente conservador nos estágios iniciais, com
foco na desaceleração da progressão da doença e no manejo das complicações. O
controle rigoroso da pressão arterial e da albuminúria é um dos pilares
terapêuticos, sendo os inibidores da ECA ou bloqueadores do receptor de
angiotensina as drogas de escolha em pacientes com proteinúria.
O controle glicêmico adequado é essencial nos pacientes diabéticos, com ajuste
das medicações conforme a TFG. Medidas dietéticas incluem restrição de sódio,
controle da ingestão proteica e manejo do fósforo alimentar.
As complicações devem ser tratadas de forma específica. A anemia é manejada
com reposição de ferro e agentes estimuladores da eritropoiese. A doença mineral
e óssea exige controle do fósforo, reposição de vitamina D…'),
  ('fibromialgia', (SELECT id FROM categorias WHERE nome = 'Reumatologia'), 'Fibromialgia', 'M79.7', 'FIBROMIALGIA
CID-10: M79.7
CONCEITO
A fibromialgia é uma síndrome dolorosa crônica, caracterizada por dor
musculoesquelética difusa e persistente, associada a múltiplos sintomas
sistêmicos, não se restringindo apenas à dor. Trata-se de condição de elevada
relevância clínica, com impacto significativo na qualidade de vida, funcionalidade
e saúde mental dos pacientes. Apresenta predomínio no sexo feminino,
especialmente entre 30 e 50 anos, embora possa acometer indivíduos de qualquer
faixa etária.
Do ponto de vista fisiopatológico, a fibromialgia é classificada como uma dor
nociplástica, na qual não há lesão tecidual identificável nem processo inflamatório
estrutural que justifique os sintomas. O mecanismo central envolve alteração no
processamento da dor no sistema nervoso central, com desequilíbrio entre as vias
ascendentes e descendentes da dor.
As vias ascendentes, responsáveis pela condução dos estímulos dolorosos da
periferia ao cérebro, encontram-se hiperativadas, com aumento de mediadores
excitatórios, como glutamato e substância P. Em contrapartida, as vias
descendentes, que exercem papel inibitório e modulador da dor, apresentam
atividade reduzida, com diminuição da ação de neurotransmissores como
serotonina, noradrenalina, dopamina e GABA. Esse desequilíbrio resulta em
sensibilização central, na qual estímulos não dolorosos passam a ser percebidos
como dor (alodinia) e estímulos dolorosos são percebidos de forma exacerbada
(hiperalgesia).
MANIFESTAÇÕES CLÍNICAS
A fibromialgia manifesta-se predominantemente por dor crônica difusa, sem
padrão anatômico específico, geralmente associada a fadiga intensa, sensação
persistente de exaustão, sono não reparador, insônia, alterações cognitivas (como
dificuldade de concentração e memória) e sintomas emocionais, incluindo
ansiedade e depressão. A intensidade dos sintomas é variável e costuma ser
exacerbada por estresse físico ou emocional.
Ao exame físico, não há sinais objetivos de inflamação articular ou muscular. A dor
pode ser evocada à palpação de músculos, articulações e estruturas
periarticulares. A pesquisa dos chamados tender points, anteriormente utilizada
como critério diagnóstico, não é mais obrigatória, sendo atualmente considerada
apenas um achado complementar.
DIAGNÓSTICO E AVALIAÇÃO CLÍNICA
O diagnóstico da fibromialgia é essencialmente clínico e deve ser considerado em
pacientes com dor musculoesquelética difusa, presente por pelo menos três
meses, associada a sintomas sistêmicos, na ausência de doença estrutural,
inflamatória, infecciosa ou autoimune que justifique o quadro.
Embora existam critérios classificatórios, como os propostos pelo American
College of Rheumatology (ACR), sua aplicação possui finalidade principalmente
acadêmica e de pesquisa. Na prática clínica, o diagnóstico baseia-se na avaliação
global do paciente, valorizando a associação entre dor generalizada e sintomas
somáticos.
É fundamental realizar diagnóstico diferencial, afastando condições que podem
cursar com sintomas semelhantes, especialmente em fases iniciais, como
hipotireoidismo, anemia, doenças reumatológicas autoimunes, infecções crônicas
e distúrbios metabólicos.
EXAMES COMPLEMENTARES
Os exames complementares não confirmam o diagnóstico de fibromialgia, sendo
indicados exclusivamente para exclusão de diagnósticos diferenciais.
Exames laboratoriais para diagnóstico diferencial
•
Hemograma completo (afastar anemia)
•
TSH (exclusão de hipotireoidismo)
•
Cálcio sérico
•
Vitamina D
•
Paratormônio (PTH), quando indicado
•
Proteína C reativa (PCR) e VHS (afastar processos inflamatórios)
•
FAN e fator reumatoide, quando houver suspeita clínica de doença
autoimune
•
Sorologias específicas, quando houver suspeita de infecção crônica
Exames de imagem
•
Não indicados de rotina
•
Devem ser solicitados apenas quando houver sinais clínicos sugestivos de
patologia estrutural associada
TRATAMENTO
O tratamento da fibromialgia deve ser multimodal, contínuo e individualizado,
combinando intervenções nã…'),
  ('osteoporose', (SELECT id FROM categorias WHERE nome = 'Reumatologia'), 'Osteoporose', 'M81', 'OSTEOPOROSE
CID-10: M81
CONCEITO
A osteoporose é uma doença osteometabólica sistêmica, caracterizada pela
redução da massa óssea e pela deterioração da microarquitetura do tecido ósseo,
resultando em aumento da fragilidade óssea e maior risco de fraturas. Trata-se de
uma condição silenciosa, frequentemente assintomática até a ocorrência de
fraturas, que podem surgir após traumas mínimos ou mesmo durante atividades
cotidianas.
Sua relevância clínica decorre do impacto funcional, da perda de autonomia, da
piora da qualidade de vida e do aumento da morbimortalidade, especialmente em
idosos. Fraturas osteoporóticas, em particular as de quadril e coluna vertebral,
estão associadas a elevada taxa de complicações e mortalidade.
FISIOPATOLOGIA
A fisiopatologia da osteoporose envolve um desequilíbrio entre a formação óssea,
realizada pelos osteoblastos, e a reabsorção óssea, mediada pelos osteoclastos.
Esse desequilíbrio favorece a perda progressiva de massa óssea e ocorre de forma
mais acentuada após a menopausa, em virtude da redução dos níveis de
estrogênio, hormônio essencial para a manutenção da integridade óssea.
O osso trabecular é o mais precocemente afetado, razão pela qual as fraturas
vertebrais são frequentes e, muitas vezes, subdiagnosticadas. Com a progressão
da doença, também ocorre comprometimento do osso cortical, aumentando o
risco de fraturas em locais como quadril e rádio distal.
FATORES DE RISCO
Os principais fatores de risco para osteoporose incluem sexo feminino, idade
avançada, menopausa precoce, história familiar de fraturas por fragilidade,
sedentarismo, baixa ingestão de cálcio, deficiência de vitamina D, tabagismo,
etilismo, baixo índice de massa corporal, além da presença de doenças ou uso de
medicamentos que interferem no metabolismo ósseo, especialmente o uso
crônico de corticoides.
MANIFESTAÇÕES CLÍNICAS
A osteoporose não causa dor articular direta. A dor, quando presente, geralmente
está relacionada a fraturas vertebrais, que podem manifestar-se como dor lombar
crônica, redução da estatura e cifose progressiva. As fraturas de quadril
representam eventos de extrema gravidade, associadas a perda funcional
importante, necessidade de institucionalização e aumento da mortalidade.
DIAGNÓSTICO
O diagnóstico da osteoporose baseia-se na avaliação clínica dos fatores de risco,
associada à mensuração da densidade mineral óssea. A densitometria óssea é o
método padrão para confirmação diagnóstica, estratificação do risco de fraturas e
monitoramento da resposta terapêutica.
EXAMES
•
Densitometria óssea (DXA), para diagnóstico e acompanhamento
•
Cálcio sérico
•
Fósforo sérico
•
Vitamina D (25-OH)
•
Paratormônio (PTH), quando indicado
•
Função renal
•
Avaliação hormonal, quando houver suspeita de osteoporose secundária
TRATAMENTO
O tratamento da osteoporose tem como objetivo principal a prevenção de fraturas,
a estabilização ou ganho de massa óssea e a redução do risco de quedas. A
abordagem deve ser contínua, individualizada e multifatorial, combinando medidas
não farmacológicas e farmacológicas.
As medidas não farmacológicas incluem estímulo à prática regular de atividade
física, especialmente exercícios de resistência e fortalecimento muscular, que
aumentam a carga mecânica sobre o osso e estimulam a formação óssea. Deve-se
orientar ingestão adequada de cálcio, preferencialmente por meio da dieta, e
garantir níveis adequados de vitamina D, essencial para a absorção intestinal do
cálcio. A cessação do tabagismo e a redução do consumo de álcool são medidas
fundamentais.
O tratamento farmacológico é indicado em pacientes com diagnóstico
densitométrico de osteoporose, fraturas prévias por fragilidade ou alto risco de
fratura. Os bifosfonatos constituem a primeira linha terapêutica, atuando na
inibição da reabsorção óssea. Podem ser administrados por via oral ou
endovenosa, conforme o perfil clínico e a adesão do paciente.
Em situações específicas, como intolerância aos bifosfonatos, osteoporose grave
ou falha terapêutic…'),
  ('osteoartrite', (SELECT id FROM categorias WHERE nome = 'Reumatologia'), 'Osteoartrite', 'M19.9', 'OSTEARTRITE
CID-10: M19.9
CONCEITO
A osteoartrite é uma doença crônica degenerativa das articulações, caracterizada
pela degradação progressiva da cartilagem articular, associada à remodelação do
osso subcondral, formação de osteófitos e inflamação local de baixo grau. Trata-se
de uma das principais causas de dor crônica e incapacidade funcional na
população adulta e idosa, com impacto significativo na qualidade de vida e na
autonomia dos pacientes.
Diferentemente da osteoporose, a osteoartrite é uma doença predominantemente
mecânica e degenerativa, embora atualmente se reconheça a participação de um
componente inflamatório de baixo grau. O processo degenerativo resulta da
interação entre fatores biomecânicos, genéticos, metabólicos e ambientais. As
articulações mais frequentemente acometidas são joelhos, quadris, mãos e coluna
vertebral.
FISIOPATOLOGIA
Na osteoartrite ocorre desequilíbrio entre a degradação e a regeneração da
cartilagem articular. O desgaste progressivo da cartilagem leva à exposição do osso
subcondral, que responde com esclerose e formação de osteófitos. Paralelamente,
há inflamação sinovial discreta, responsável por parte da dor e do derrame articular
observado em alguns pacientes.
Alterações biomecânicas, como sobrecarga articular, desalinhamentos, obesidade
e fraqueza muscular, aceleram o processo degenerativo e contribuem para a
progressão da doença.
MANIFESTAÇÕES CLÍNICAS
Clinicamente, a osteoartrite manifesta-se por dor articular de caráter mecânico,
com piora durante o movimento e melhora com o repouso inicial. A rigidez matinal
é geralmente breve, com duração inferior a 30 minutos. Com a progressão da
doença, surgem crepitações articulares, limitação da amplitude de movimento,
deformidades e redução progressiva da capacidade funcional.
Ao exame físico, podem ser observados dor à mobilização, limitação articular,
crepitações, deformidades e, ocasionalmente, derrame articular discreto. Nas
mãos, são característicos os nódulos de Heberden (interfalangianas distais) e
nódulos de Bouchard (interfalangianas proximais), indicativos de acometimento
típico da doença.
DIAGNÓSTICO
O diagnóstico da osteoartrite é essencialmente clínico, baseado na história e no
exame físico compatíveis. Os exames de imagem são utilizados para confirmar o
diagnóstico, avaliar a gravidade e afastar diagnósticos diferenciais, não devendo ser
solicitados de forma indiscriminada.
EXAMES
Radiografia simples da articulação acometida, para confirmação diagnóstica e
avaliação estrutural
•
Ultrassonografia articular, quando houver suspeita de bursite, sinovite ou
derrame articular associado
•
Ressonância magnética, em casos selecionados, especialmente para
diagnóstico diferencial ou avaliação pré-operatória
TRATAMENTO
O tratamento da osteoartrite tem como objetivos principais o alívio da dor, a
melhora da função articular e a preservação da qualidade de vida. A abordagem
deve ser progressiva, individualizada e priorizar medidas não farmacológicas.
As medidas não farmacológicas constituem a base do tratamento. A perda de peso
é uma das intervenções mais eficazes, especialmente em pacientes com
osteoartrite de joelhos e quadris. A prática regular de exercícios físicos, com
fortalecimento muscular, alongamento e fisioterapia, contribui significativamente
para redução da dor, melhora da estabilidade articular e funcionalidade.
O tratamento farmacológico inclui analgésicos simples como primeira linha. Os
anti-inflamatórios não esteroidais podem ser utilizados por períodos curtos,
sempre considerando os riscos gastrointestinais, renais e cardiovasculares.
Opioides leves podem ser considerados em casos refratários, com cautela. As
infiltrações intra-articulares com corticosteroides ou ácido hialurônico são opções
terapêuticas em casos selecionados, especialmente quando há dor persistente
apesar do tratamento conservador.
Nos estágios avançados da doença, quando há falha das medidas conservadoras
e comprometimento importante da função e da qualid…'),
  ('gota', (SELECT id FROM categorias WHERE nome = 'Reumatologia'), 'Gota', 'M10', 'GOTA
CID-10: M10
CONCEITO
A gota é a artrite inflamatória mais comum no ser humano, caracterizada pela
deposição de cristais de monourato de sódio no líquido sinovial, cartilagens, ossos
e tecidos moles, decorrente de estados persistentes de hiperuricemia. Trata-se de
uma doença potencialmente destrutiva, que pode evoluir com comprometimento
articular grave, formação de tofos e acometimento renal quando não diagnosticada
e tratada adequadamente.
A hiperuricemia é definida por níveis séricos de ácido úrico acima de 7 mg/dL, valor
correspondente ao limite de solubilidade do urato nos fluidos corporais em
condições fisiológicas. Ressalta-se que a hiperuricemia é condição necessária,
porém não suficiente, para o desenvolvimento da gota, visto que apenas uma
parcela dos indivíduos hiperuricêmicos evolui com manifestações clínicas.
FISIOPATOLOGIA
Do ponto de vista fisiopatológico, a gota decorre predominantemente da
hipoexcreção renal de ácido úrico, responsável por aproximadamente 80 a 90% dos
casos, enquanto a hiperprodução é menos frequente. A supersaturação do urato
leva à cristalização do monourato de sódio, que, ao se depositar nos tecidos, ativa
o sistema complemento, promove quimiotaxia de neutrófilos e desencadeia
liberação de citocinas inflamatórias, como interleucinas e fator de necrose
tumoral, resultando no quadro inflamatório agudo.
EVOLUÇÃO CLÍNICA
A gota apresenta evolução típica em fases. Inicialmente, o paciente pode
permanecer por anos em estado de hiperuricemia assintomática. Com a
progressão, surgem crises de artrite aguda, intercaladas por períodos
assintomáticos, denominados período intercrítico. Na ausência de tratamento
adequado, a doença pode evoluir para a gota tofácea crônica, caracterizada por
ataques frequentes, envolvimento poliarticular, sinovite crônica destrutiva e
presença de tofos, que representam depósitos organizados de cristais de
monourato de sódio em tecidos moles.
MANIFESTAÇÕES CLÍNICAS
A manifestação clássica da gota é a crise aguda monoarticular, presente em cerca
de 85 a 90% dos casos, com predomínio da articulação metatarsofalangiana do
hálux, quadro conhecido como podagra. A dor tem início súbito, é intensa,
associada a edema, calor local, eritema e limitação funcional importante.
Outras articulações frequentemente acometidas incluem tornozelos, joelhos,
punhos e cotovelos. Durante a crise aguda, os níveis séricos de ácido úrico podem
estar normais ou reduzidos, motivo pelo qual não se recomenda a dosagem de
ácido úrico para diagnóstico durante a crise.
Com a progressão da doença, pode ocorrer acometimento poliarticular e
surgimento de complicações renais, como nefropatia por uratos, nefropatia aguda
por ácido úrico e litíase renal.
DIAGNÓSTICO
O diagnóstico da gota é fortemente sugerido pela história clínica típica, pela
recorrência das crises e pela presença de tofos, considerados achados
patognomônicos. O diagnóstico definitivo é estabelecido pela identificação de
cristais de monourato de sódio no líquido sinovial, com morfologia em agulha e
birrefringência negativa à luz polarizada.
EXAMES
Exames laboratoriais
•
Ácido úrico sérico (preferencialmente fora da crise)
•
Hemograma completo
•
Função renal (ureia e creatinina)
•
Urina tipo I
•
Uricemia seriada para acompanhamento terapêutico
Exames do líquido sinovial
•
Artrocentese em toda monoartrite aguda
•
Análise citológica
•
Cultura
•
Pesquisa de cristais de monourato de sódio (diagnóstico definitivo)
Exames de imagem
•
Radiografia simples, com achados tardios como erosões ósseas em “sacabocado”
•
Ultrassonografia articular, com identificação do sinal do duplo contorno
•
Tomografia computadorizada de dupla energia, quando disponível, para
identificação de depósitos de urato
TRATAMENTO
O tratamento da gota divide-se em duas etapas: manejo da crise aguda e terapia de
manutenção.
Na crise aguda, o objetivo é controlar rapidamente a inflamação e a dor. Podem ser
utilizados anti-inflamatórios não esteroidais, colchicina ou corticosteroide…'),
  ('les', (SELECT id FROM categorias WHERE nome = 'Reumatologia'), 'Lúpus Eritematoso Sistêmico (LES)', 'M32', 'LÚPUS ERITEMATOSO SISTÊMICO (LES)
CID-10: M32
CONCEITO
O lúpus eritematoso sistêmico é uma doença autoimune sistêmica do tecido
conjuntivo, de etiologia multifatorial e ainda não completamente elucidada,
caracterizada pela produção de autoanticorpos patogênicos e por uma resposta
imunológica desregulada. A interação entre fatores genéticos, hormonais e
ambientais leva à perda da autotolerância imunológica, culminando na formação
de imunocomplexos que se depositam em diversos órgãos e tecidos,
desencadeando inflamação sistêmica e dano orgânico progressivo.
A doença apresenta nítido predomínio no sexo feminino, especialmente em
mulheres jovens em idade reprodutiva, fenômeno atribuído, em grande parte, à
influência do estrogênio, que aumenta tanto o risco de desenvolvimento quanto a
atividade da doença. A maior incidência e pior prognóstico em populações negras
reforçam o papel da predisposição genética na fisiopatologia do LES.
FISIOPATOLOGIA
A fisiopatologia do LES envolve ativação inadequada do sistema imunológico, com
produção de autoanticorpos contra componentes nucleares e citoplasmáticos.
Esses autoanticorpos formam imunocomplexos que se depositam nos tecidos,
ativam o sistema complemento e promovem inflamação mediada por citocinas,
resultando em lesão tecidual. O consumo de complemento (C3 e C4) reflete
atividade da doença e está associado a manifestações mais graves, especialmente
renais.
MANIFESTAÇÕES CLÍNICAS
As manifestações clínicas do lúpus são extremamente heterogêneas, refletindo
seu caráter sistêmico. As manifestações constitucionais são frequentes e incluem
fadiga intensa, febre, mal-estar, anorexia, perda ponderal e linfadenomegalias.
O acometimento musculoesquelético é uma das apresentações mais comuns,
manifestando-se como artralgia inflamatória ou artrite, geralmente simétrica,
envolvendo mãos, punhos e joelhos. A artrite do lúpus é tipicamente não erosiva,
podendo apresentar caráter migratório. Em uma minoria dos pacientes, ocorre a
artropatia de Jaccoud, caracterizada por deformidades redutíveis sem erosões
ósseas.
As manifestações mucocutâneas são frequentes e associadas à exposição solar,
destacando-se a fotossensibilidade, o rash malar poupando os sulcos nasolabiais,
úlceras orais indolores e diferentes formas de lúpus cutâneo, como o subagudo e o
discoide.
O acometimento renal, denominado nefrite lúpica, representa uma das
manifestações mais graves e está associado a pior prognóstico. Pode manifestarse como síndrome nefrítica, síndrome nefrótica ou glomerulonefrite rapidamente
progressiva. As classes III e IV são as mais graves, sendo a classe IV difusa a de pior
prognóstico, enquanto a classe V cursa predominantemente com síndrome
nefrótica.
O sistema nervoso central pode ser acometido, resultando em convulsões,
psicose, confusão mental, eventos cerebrovasculares, mielopatia e neuropatias. O
envolvimento cardiopulmonar inclui pericardite, miocardite, endocardite de
Libman-Sacks e hemorragia alveolar. Alterações hematológicas são frequentes,
incluindo anemia, leucopenia, linfopenia e plaquetopenia.
O LES pode associar-se à síndrome antifosfolípide, condição caracterizada por
tromboses arteriais ou venosas e complicações obstétricas, como perdas fetais
recorrentes, pré-eclâmpsia e restrição de crescimento intrauterino.
TRATAMENTO
O tratamento do lúpus eritematoso sistêmico deve ser individualizado, contínuo e
ajustado conforme a gravidade e o órgão acometido. Não existe esquema
terapêutico único.
A hidroxicloroquina constitui a base do tratamento e deve ser utilizada por
praticamente todos os pacientes, salvo contraindicações. Reduz atividade da
doença, previne surtos, melhora manifestações cutâneas e articulares, reduz risco
trombótico e está associada à menor mortalidade.
Os corticosteroides são utilizados conforme a gravidade clínica. Doses baixas a
moderadas são indicadas em manifestações leves a moderadas. Em quadros
graves ou ameaçadores à vida, como nefrite lúpica grave, acometimento
neurológico …'),
  ('artrite', (SELECT id FROM categorias WHERE nome = 'Reumatologia'), 'Artrite Reumatoide', 'M06', 'ARTRITE REUMATOIDE
CID-10: M06
CONCEITO
A artrite reumatoide é uma doença autoimune inflamatória crônica, sistêmica e
progressiva, caracterizada predominantemente pelo acometimento articular
periférico, com potencial de causar deformidades, limitação funcional e aumento
da mortalidade. Apresenta maior prevalência no sexo feminino e pode surgir em
qualquer faixa etária adulta, sendo considerada uma das principais doenças
reumatológicas inflamatórias.
FISIOPATOLOGIA
A fisiopatologia da artrite reumatoide envolve a interação entre fatores genéticos e
ambientais. A predisposição genética está fortemente associada à presença de
alelos do HLA-DRB1, especialmente aqueles que compartilham o chamado
epítopo compartilhado, aumentando a suscetibilidade ao desenvolvimento da
doença. Entre os fatores ambientais, o tabagismo exerce papel central, estando
relacionado tanto ao surgimento quanto à maior gravidade da doença.
O processo inicia-se com ativação anormal do sistema imunológico, levando à
produção de autoanticorpos e liberação de citocinas inflamatórias. A inflamação
primária ocorre na membrana sinovial, configurando a sinovite, que representa o
achado patológico central da doença. A inflamação persistente promove
proliferação sinovial (pannus), destruição da cartilagem, erosões ósseas e
comprometimento de ligamentos e tendões, culminando em deformidades
articulares e limitação funcional irreversível.
MANIFESTAÇÕES CLÍNICAS
Clinicamente, a artrite reumatoide caracteriza-se como uma poliartrite inflamatória
crônica, com duração igual ou superior a seis semanas, distribuição simétrica e
caráter aditivo, acometendo progressivamente novas articulações. Predomina o
envolvimento das pequenas articulações, especialmente metacarpofalangianas,
interfalangianas proximais e punhos, com típico poupamento das interfalangianas
distais. O esqueleto axial, em geral, não é acometido, exceto a coluna cervical,
particularmente a articulação atlantoaxial.
A rigidez matinal prolongada, com duração igual ou superior a uma hora, é um dos
achados clínicos mais característicos e reflete atividade inflamatória. Com a
progressão da doença, surgem deformidades clássicas, como desvio ulnar dos
dedos, mão em “Z” ou “ventania”, além das deformidades em pescoço de cisne e
boutonnière, decorrentes do comprometimento ligamentar e tendíneo.
Além das manifestações articulares, cerca de 30 a 40% dos pacientes apresentam
manifestações extra-articulares, como nódulos reumatoides, ceratoconjuntivite
seca, doença pulmonar intersticial, derrame pleural, pericardite, vasculites e
alterações hematológicas. A associação com pneumoconiose caracteriza a
síndrome de Caplan. O risco cardiovascular encontra-se significativamente
aumentado, sendo a principal causa de mortalidade nesses pacientes.
DIAGNÓSTICO
O diagnóstico da artrite reumatoide é essencialmente clínico, baseado na presença
de sinovite inflamatória persistente e na exclusão de outras causas de artrite. Os
critérios classificatórios do ACR/EULAR 2010 auxiliam na identificação precoce da
doença, especialmente nos estágios iniciais, destacando a importância da janela
de oportunidade terapêutica, período em que o tratamento precoce modifica
significativamente a evolução da doença.
EXAMES INDICADOS NA ARTRITE REUMATOIDE
Exames laboratoriais
•
Hemograma completo
•
PCR e VHS, para avaliação de atividade inflamatória
•
Função renal e hepática
•
Fator reumatoide
•
Anti-CCP (anticorpo
especificidade
•
FAN, quando indicado para diagnóstico diferencial
anti-peptídeo
citrulinado
cíclico),
de
alta
Exames de imagem
•
Radiografia simples das mãos, punhos e articulações acometidas
•
Ultrassonografia articular, para detecção precoce de sinovite
•
Ressonância magnética, em casos selecionados, para avaliação precoce de
erosões
Exames de monitorização terapêutica
•
Hemograma, função hepática e renal periódicos, especialmente em uso de
metotrexato e outros DMARDs
TRATAMENTO
O tratamento da artrite reumatoide deve ser iniciado o mais precoce…'),
  ('arboviroses', (SELECT id FROM categorias WHERE nome = 'Infectologia'), 'Arboviroses (Dengue/Chikungunya/Zika)', 'A90/A92.0/A92.8', 'ARBOVIROSES
Dengue, Chikungunya e Zika
CID-10: DEGUE (A-90); CHIKUNGUNYA (A92.0) e ZIKA (A92.8)
As arboviroses constituem um importante grupo de doenças infecciosas virais
transmitidas por artrópodes, com destaque para o mosquito Aedes aegypti,
principal vetor de dengue, chikungunya e zika no Brasil. Essas infecções
representam um relevante problema de saúde pública, em razão de sua elevada
incidência, potencial de surtos epidêmicos, impacto nos serviços de saúde e
possibilidade de evolução para formas graves e complicações sistêmicas.
Os vírus da dengue e do zika pertencem à família Flaviviridae, enquanto o vírus da
chikungunya integra a família Togaviridae. Todas são infecções virais de RNA, com
apresentações clínicas que compartilham sintomas semelhantes, o que torna o
diagnóstico diferencial um desafio na prática clínica, especialmente nas fases
iniciais da doença.
A dengue é a arbovirose mais prevalente no Brasil e apresenta ampla variabilidade
clínica. A maioria dos casos é assintomática ou leve, porém uma parcela dos
pacientes pode evoluir para formas graves, potencialmente fatais. A fisiopatologia
da dengue é marcada por intensa resposta inflamatória sistêmica e disfunção
endotelial, resultando em aumento da permeabilidade vascular e extravasamento
plasmático. Esse mecanismo é responsável pela hemoconcentração, formação de
derrames cavitários e desenvolvimento de choque hipovolêmico, principal causa
de óbito na dengue grave.
Clinicamente, a dengue evolui em três fases: febril, crítica e de recuperação. A fase
febril caracteriza-se por febre alta de início súbito, cefaleia intensa, dor retroorbitária, mialgia, artralgia e exantema. A fase crítica ocorre geralmente após a
defervescência da febre e é o período de maior risco, no qual podem surgir sinais
de alarme, sangramentos e choque. A fase de recuperação é marcada pela
reabsorção do plasma extravasado e melhora progressiva do quadro clínico.
A chikungunya é uma arbovirose caracterizada por febre aguda associada a
poliartralgia intensa, frequentemente incapacitante. Diferentemente da dengue, a
chikungunya apresenta elevada taxa de cronificação, podendo evoluir para formas
articulares crônicas em até 60% dos casos. A doença é classificada temporalmente
em fase aguda, fase pós-aguda e fase crônica, sendo o acometimento articular o
principal determinante de morbidade.
Na fase aguda, predominam febre elevada e dor articular intensa, geralmente
simétrica e envolvendo pequenas e grandes articulações. Na fase pós-aguda, a
febre desaparece, mas os sintomas articulares persistem. Na fase crônica, o
paciente pode evoluir com artrite inflamatória persistente, rigidez matinal
prolongada e limitação funcional, podendo mimetizar doenças reumatológicas
inflamatórias, como artrite reumatoide.
A zika, por sua vez, costuma apresentar quadro clínico mais brando quando
comparado à dengue e à chikungunya. O principal sintoma é o exantema
maculopapular pruriginoso, geralmente de início precoce, associado a conjuntivite
não purulenta, artralgia leve a moderada e febre baixa ou ausente. Apesar da
apresentação clínica menos exuberante, a zika assume grande importância clínica
devido ao risco de complicações neurológicas e, principalmente, à transmissão
vertical, associada a malformações congênitas graves, como a microcefalia.
O diagnóstico clínico das arboviroses deve considerar o contexto epidemiológico,
a presença de sintomas compatíveis e a exclusão de outras causas de síndrome
febril aguda. A confirmação laboratorial é importante em situações específicas,
como casos graves, gestantes, pacientes com manifestações neurológicas ou
quando há necessidade de vigilância epidemiológica.
TRATAMENTO DAS ARBOVIROSES
O tratamento das arboviroses é predominantemente sintomático e de suporte,
uma vez que não há terapias antivirais específicas para dengue, chikungunya ou
zika. A conduta deve ser individualizada conforme o tipo de arbovirose, a fase da
doença e a gravidade do quadro clínico.
Na dengue, o …'),
  ('parasitoses', (SELECT id FROM categorias WHERE nome = 'Infectologia'), 'Parasitoses Intestinais', 'B82', 'PARASITOSES INTESTINAIS
CID-10: B82
As parasitoses intestinais constituem um importante grupo de doenças infecciosas
causadas por helmintos e protozoários, sendo altamente prevalentes em países em
desenvolvimento, especialmente em regiões com condições precárias de
saneamento básico, acesso limitado à água potável e baixos níveis
socioeconômicos. São consideradas doenças negligenciadas pela Organização
Mundial da Saúde, uma vez que afetam predominantemente populações
vulneráveis e recebem menor investimento em pesquisa e desenvolvimento
terapêutico.
A transmissão das parasitoses ocorre, em sua maioria, pela via fecal-oral, por meio
da ingestão de ovos ou cistos presentes em água e alimentos contaminados, ou
ainda por penetração ativa de larvas através da pele íntegra, como observado em
algumas helmintíases. Crianças em idade escolar representam o grupo mais
acometido, especialmente aquelas residentes em áreas rurais ou periféricas de
centros urbanos.
Do ponto de vista etiológico, as parasitoses intestinais são classificadas em dois
grandes grupos: helmintíases e protozooses. Os helmintos dividem-se em
nematódeos, que apresentam corpo cilíndrico, e platelmintos, de corpo achatado.
Entre os nematódeos de maior relevância clínica destacam-se Ascaris
lumbricoides, Ancylostoma duodenale, Necator americanus, Strongyloides
stercoralis, Trichuris trichiura, Enterobius vermicularis e Toxocara canis. Entre os
platelmintos, merecem destaque Taenia solium, Taenia saginata e Schistosoma
mansoni. Já entre os protozoários, os principais agentes são Giardia lamblia e
Entamoeba histolytica.
As manifestações clínicas das parasitoses intestinais são bastante variáveis e
dependem do agente etiológico, da carga parasitária e da resposta imunológica do
hospedeiro. Muitos indivíduos permanecem assintomáticos, enquanto outros
podem apresentar quadros clínicos relevantes. Sintomas gastrointestinais são
frequentes, incluindo dor abdominal, diarreia, náuseas, vômitos, distensão
abdominal e perda ponderal. Em casos mais graves, podem ocorrer anemia
ferropriva,
desnutrição,
hipoalbuminemia
e
comprometimento
do
desenvolvimento infantil.
Algumas parasitoses apresentam manifestações clínicas típicas que auxiliam no
diagnóstico. A ascaridíase pode cursar com síndrome de Loeffler durante a fase
pulmonar e, em casos de alta carga parasitária, evoluir com suboclusão ou
obstrução intestinal. A ancilostomíase caracteriza-se pelo hemofagismo dos
vermes, levando à anemia ferropriva. A estrongiloidíase assume grande relevância
em pacientes imunocomprometidos, podendo evoluir para formas graves com
hiperinfecção e sepse por bactérias Gram-negativas. A enterobíase apresenta
como sinal clássico o prurido anal noturno. A tricuríase, em infecções intensas,
pode levar a tenesmo e prolapso retal. A toxocaríase, também chamada de larva
migrans visceral, pode cursar com pneumonia, hepatomegalia e eosinofilia
importante.
Entre as protozooses, a giardíase destaca-se pelo quadro de diarreia disabsortiva,
esteatorreia, restos alimentares nas fezes e, em casos crônicos, desnutrição e
intolerância à lactose. A amebíase manifesta-se principalmente sob a forma de
colite amebiana, com diarreia mucossanguinolenta e dor abdominal, podendo
evoluir para formas invasivas.
O diagnóstico das parasitoses intestinais baseia-se na correlação entre dados
clínicos, epidemiológicos e laboratoriais. O exame parasitológico de fezes é o
principal método diagnóstico, podendo ser realizado por técnicas qualitativas e
quantitativas, conforme a suspeita clínica. Em situações específicas, como
estrongiloidíase e síndrome de Loeffler, métodos especiais são necessários para a
detecção de larvas.
TRATAMENTO
O tratamento das parasitoses intestinais deve ser direcionado conforme o agente
etiológico identificado, respeitando as particularidades de cada parasita e as
condições clínicas do paciente. As principais classes de fármacos utilizadas
incluem benzimidazóis, ivermectina, pamoato de pirantel, praziquantel,…'),
  ('pneumonias', (SELECT id FROM categorias WHERE nome = 'Infectologia'), 'Pneumonias Bacterianas', 'J15', 'PNEUMONIAS BACTERIANAS
CID-10: J15
As pneumonias bacterianas correspondem a infecções agudas do parênquima
pulmonar causadas por bactérias, sendo uma das principais causas de morbidade
e mortalidade em todo o mundo. No contexto da atenção primária, das unidades
de pronto atendimento e do ambiente hospitalar, representam causa frequente de
internações, especialmente entre idosos, crianças, imunossuprimidos e pacientes
com comorbidades crônicas. A forma mais prevalente é a pneumonia adquirida na
comunidade, embora também sejam relevantes as pneumonias associadas à
assistência em saúde e à ventilação mecânica.
Do ponto de vista fisiopatológico, a pneumonia bacteriana ocorre quando o agente
infeccioso ultrapassa os mecanismos de defesa das vias aéreas superiores e atinge
os alvéolos pulmonares, desencadeando intensa resposta inflamatória. O
recrutamento de neutrófilos e macrófagos leva à formação de exsudato alveolar
rico em proteínas e células inflamatórias, resultando em consolidação pulmonar,
espessamento da membrana alvéolo-capilar e prejuízo da troca gasosa, com
consequente hipoxemia.
As pneumonias bacterianas podem ser classificadas em típicas e atípicas,
classificação ainda utilizada na prática clínica e nas provas, apesar de
progressivamente substituída por abordagens sindrômicas. As pneumonias típicas
são causadas por bactérias extracelulares, como Streptococcus pneumoniae,
Haemophilus influenzae, Klebsiella pneumoniae, Staphylococcus aureus e
Pseudomonas aeruginosa, caracterizando-se por início abrupto, febre alta,
toxemia, tosse produtiva e consolidação pulmonar evidente. As pneumonias
atípicas, por sua vez, são causadas por bactérias intracelulares, como Mycoplasma
pneumoniae, Chlamydophila pneumoniae e Legionella pneumophila, cursando
com evolução subaguda, sintomas respiratórios menos exuberantes e
manifestações extrapulmonares frequentes.
O quadro clínico das pneumonias bacterianas inclui febre, tosse produtiva,
dispneia, dor torácica ventilatório-dependente, taquipneia e, em casos mais
graves, sinais de insuficiência respiratória e sepse. Ao exame físico, podem ser
observados estertores crepitantes, frêmito toracovocal aumentado, submacicez à
percussão e broncofonia, especialmente nas pneumonias lobares. Em idosos, o
quadro pode ser atípico, manifestando-se principalmente por confusão mental,
quedas e piora do estado geral.
O diagnóstico das pneumonias bacterianas é clínico-radiológico. A radiografia de
tórax constitui o exame essencial para confirmação diagnóstica, sendo capaz de
evidenciar infiltrados alveolares, consolidações lobares, broncogramas aéreos e,
em alguns casos, derrame pleural. Exames laboratoriais auxiliam na avaliação da
gravidade, na diferenciação etiológica e no monitoramento da resposta
terapêutica.
A estratificação da gravidade é fundamental para definir o local de tratamento. Para
isso, utilizam-se escores prognósticos como CURB-65 ou CRB-65, que avaliam
confusão mental, frequência respiratória, pressão arterial, idade e níveis de ureia.
Pacientes com escores mais elevados apresentam maior risco de mortalidade e
necessitam de internação hospitalar ou em unidade de terapia intensiva.
TRATAMENTO
O tratamento deve ser iniciado de forma empírica, o mais precocemente possível,
com base na gravidade do quadro, no local de aquisição da infecção, nas
comorbidades do paciente e nos fatores de risco para patógenos resistentes.
Nos pacientes com pneumonia adquirida na comunidade de baixo risco, sem
comorbidades e sem uso recente de antibióticos, o tratamento ambulatorial pode
ser realizado com amoxicilina, amoxicilina associada ao clavulanato ou
macrolídeos, como azitromicina ou claritromicina, com duração média de 5 a 7
dias.
Em pacientes com comorbidades ou maior risco de complicações, recomenda-se
a associação de um betalactâmico a um macrolídeo, visando ampliar a cobertura
para agentes típicos e atípicos. As fluoroquinolonas respiratórias constituem
alternativa em pacientes alérgicos aos betalactâmi…'),
  ('tuberculose', (SELECT id FROM categorias WHERE nome = 'Infectologia'), 'Tuberculose', 'A15', 'TUBERCULOSE
CID-10: A15
A tuberculose é uma doença infecciosa crônica de grande relevância em saúde
pública, causada por micobactérias do complexo Mycobacterium tuberculosis.
Apresenta elevada incidência no Brasil e está fortemente associada a condições
socioeconômicas desfavoráveis, como pobreza, desnutrição, aglomeração
domiciliar e acesso limitado aos serviços de saúde. Trata-se de uma doença de
notificação compulsória, exigindo vigilância epidemiológica ativa e abordagem
terapêutica padronizada.
A transmissão da tuberculose ocorre predominantemente pela via aérea, por meio
da inalação de aerossóis eliminados por indivíduos com tuberculose pulmonar ou
laríngea bacilífera, durante a tosse, fala ou espirro. Formas extrapulmonares
exclusivas, como tuberculose pleural ou ganglionar, não são transmissíveis.
Ambientes fechados, com pouca ventilação e ausência de luz solar, favorecem a
disseminação da doença.
Após a infecção inicial, a evolução clínica depende da resposta imunológica do
hospedeiro. O indivíduo pode eliminar o bacilo, desenvolver tuberculose primária,
evoluir para infecção latente pelo Mycobacterium tuberculosis (ILTB) ou,
posteriormente, apresentar reativação da doença, caracterizando a tuberculose
secundária. A maioria dos infectados permanece assintomática, com bacilos em
estado de latência.
A tuberculose pulmonar é a forma mais comum da doença e pode manifestar-se de
diferentes maneiras. A tuberculose primária ocorre geralmente na infância e
apresenta sintomas sistêmicos discretos, podendo cursar sem manifestações
respiratórias. A tuberculose pós-primária ou secundária é mais frequente em
adolescentes e adultos, caracterizando-se por tosse persistente, febre, sudorese
noturna, perda ponderal e, em alguns casos, hemoptise. A tuberculose miliar
resulta da disseminação hematogênica do bacilo e ocorre principalmente em
pacientes imunossuprimidos, apresentando quadro clínico grave e sistêmico.
As formas extrapulmonares da tuberculose acometem diversos órgãos e sistemas,
sendo as mais frequentes a tuberculose pleural, ganglionar, do sistema nervoso
central, urogenital, osteoarticular, abdominal e pericárdica. Em pacientes vivendo
com HIV, as formas extrapulmonares são mais prevalentes e frequentemente
associadas a quadros clínicos atípicos.
O diagnóstico da tuberculose deve basear-se na associação entre quadro clínico
compatível, achados radiológicos sugestivos e confirmação bacteriológica sempre
que possível. A busca ativa de sintomáticos respiratórios, definida como indivíduos
com tosse por duas a três semanas ou mais, é estratégia fundamental para o
controle da doença.
TRATAMENTO
O tratamento da tuberculose deve ser instituído imediatamente após a
confirmação diagnóstica ou diante de forte suspeita clínica, seguindo esquemas
padronizados preconizados pelo Ministério da Saúde. O tratamento é dividido em
duas fases: fase intensiva e fase de manutenção.
O esquema básico para tuberculose pulmonar e extrapulmonar em indivíduos
maiores de 10 anos consiste na associação de rifampicina, isoniazida,
pirazinamida e etambutol durante dois meses, seguida pela fase de manutenção
com rifampicina e isoniazida por, no mínimo, quatro meses, totalizando seis meses
de tratamento. Esse esquema é conhecido como RIPE na fase intensiva e RI na fase
de manutenção.
Nos casos de tuberculose meningoencefálica e osteoarticular, o esquema
terapêutico mantém a fase intensiva de dois meses com rifampicina, isoniazida,
pirazinamida e etambutol, porém a fase de manutenção é prolongada por dez
meses, totalizando doze meses de tratamento.
Populações especiais requerem atenção específica. Gestantes, diabéticos,
alcoólatras e pessoas vivendo com HIV devem receber suplementação com
piridoxina durante o tratamento, visando prevenir neuropatia periférica associada à
isoniazida. Em pacientes hepatopatas, o esquema pode necessitar de ajustes ou
substituições, conforme o grau de comprometimento hepático.
Na coinfecção tuberculose-HIV, o tratamento da tuber…'),
  ('hiv', (SELECT id FROM categorias WHERE nome = 'Infectologia'), 'HIV/AIDS', 'B24', 'HIV
CID-10: B24
A infecção pelo vírus da imunodeficiência humana (HIV) constitui importante
problema de saúde pública, caracterizando-se pela infecção crônica de linfócitos
T CD4+, com consequente imunossupressão progressiva. A redução da imunidade
celular predispõe o indivíduo ao desenvolvimento de infecções oportunistas,
neoplasias e outras complicações sistêmicas, configurando a síndrome da
imunodeficiência adquirida (Aids) nas fases mais avançadas da doença.
O diagnóstico precoce e o início oportuno da terapia antirretroviral são estratégias
fundamentais para reduzir a morbimortalidade, interromper a cadeia de
transmissão e garantir melhor qualidade de vida às pessoas vivendo com HIV.
2. ASPECTOS GERAIS E FISIOPATOLOGIA
O HIV é um retrovírus da família Retroviridae, subfamília Lentiviridae, que possui
RNA como material genético e utiliza a enzima transcriptase reversa para integrar
seu DNA ao genoma da célula hospedeira. O principal alvo do vírus são os linfócitos
T CD4+, células essenciais para a coordenação da resposta imune adaptativa.
A destruição progressiva dessas células leva à imunodeficiência, aumentando a
susceptibilidade a infecções bacterianas, virais, fúngicas e parasitárias, além de
doenças inflamatórias crônicas, cardiovasculares, renais, ósseas e neoplasias.
3. TRANSMISSÃO E EPIDEMIOLOGIA
A transmissão do HIV ocorre principalmente por via sexual desprotegida, seguida
da exposição parenteral ao sangue contaminado e da transmissão vertical
(gestação, parto e amamentação). A presença de outras infecções sexualmente
transmissíveis aumenta significativamente o risco de transmissão.
No Brasil, observa-se redução da mortalidade relacionada ao HIV, atribuída à
ampliação do acesso ao diagnóstico e ao tratamento antirretroviral. Entretanto,
persistem desafios relacionados ao diagnóstico tardio, adesão ao tratamento e
aumento da incidência em populações vulneráveis, especialmente homens jovens.
4. QUADRO CLÍNICO E EVOLUÇÃO NATURAL
A infecção pelo HIV pode ser dividida em três fases clínicas. A infecção aguda
ocorre semanas após a exposição, podendo manifestar-se como síndrome
retroviral aguda, com febre, linfadenopatia, exantema, faringite e mialgia. Em
seguida, estabelece-se a fase de latência clínica, geralmente assintomática,
podendo durar anos. Por fim, a fase avançada ou Aids caracteriza-se por queda
significativa dos linfócitos T CD4+ (geralmente < 200 células/mm³) ou pelo
surgimento de doenças definidoras de Aids.
5. DIAGNÓSTICO LABORATORIAL
O diagnóstico da infecção pelo HIV deve ser realizado por meio de dois testes
consecutivos, utilizando metodologias diferentes, conforme preconizado pelo
Ministério da Saúde. A testagem deve ser ofertada de forma rotineira a todas as
pessoas sexualmente ativas e obrigatoriamente aos pacientes diagnosticados com
tuberculose.
6. TRATAMENTO
O tratamento da infecção pelo HIV baseia-se na terapia antirretroviral (TARV),
indicada para todos os pacientes diagnosticados, independentemente da
contagem de linfócitos T CD4+ ou do valor da carga viral.
O início imediato da TARV reduz a progressão da doença, diminui a incidência de
infecções oportunistas, reduz a mortalidade e impede a transmissão do vírus, uma
vez que pacientes com carga viral indetectável não transmitem o HIV.
O esquema preferencial de primeira linha recomendado no Brasil consiste na
associação de tenofovir + lamivudina + dolutegravir, salvo contraindicações
específicas. A escolha do esquema deve considerar comorbidades, possíveis
interações medicamentosas, gestação, coinfecções (como tuberculose e hepatite
B) e histórico de resistência viral.
O acompanhamento clínico deve ser contínuo, com avaliação periódica da adesão,
efeitos adversos, resposta virológica e imunológica, além da prevenção e
tratamento das infecções oportunistas.
7. EXAMES RECOMENDADOS
Exames para diagnóstico inicial
•
Teste rápido para HIV (dois testes de fabricantes diferentes)
•
Imunoensaio de 3ª ou 4ª geração
•
Teste molecular (carga viral – RNA …'),
  ('mordeduras', (SELECT id FROM categorias WHERE nome = 'Infectologia'), 'Mordeduras, Raiva e Tétano', 'W54/W55/A82/A35', 'ACIDENTES POR MORDEDURA E ARRANHADURA ANIMAL, RAIVA E TÉTANO
1. INTRODUÇÃO
Os acidentes por mordedura e arranhadura animal representam eventos frequentes
nos serviços de urgência e emergência, especialmente em Unidades Básicas de
Saúde e pronto-atendimentos. Esses agravos apresentam relevância clínica e
epidemiológica por estarem associados ao risco de infecções bacterianas locais e
sistêmicas, transmissão da raiva humana e ocorrência de tétano acidental,
condições potencialmente graves e, no caso da raiva, com letalidade próxima de
100% após o início dos sintomas.
O manejo adequado requer abordagem imediata, avaliação criteriosa do ferimento,
análise do risco epidemiológico e instituição precoce das medidas de profilaxia
específicas.
2. MORDEDURA E ARRANHADURA DE ANIMAIS
CID-10: W54 ( CÃES) W55 (OUTROS MAMÍFEROS).
As mordeduras e arranhaduras devem ser consideradas ferimentos contaminados,
uma vez que a cavidade oral dos animais abriga ampla diversidade de
microrganismos, principalmente bactérias gram-negativas e anaeróbias. Em cães
e gatos, destaca-se a Pasteurella multocida, associada a infecções profundas,
abscessos e osteomielite, enquanto mordeduras humanas apresentam maior
predomínio de flora gram-positiva e anaeróbia.
A avaliação inicial deve considerar localização, profundidade, extensão da lesão,
presença de comprometimento neurovascular, envolvimento de tendões,
articulações ou ossos, além do estado clínico do paciente e do animal agressor.
A limpeza imediata da ferida é a medida mais importante para prevenção de
infecção e transmissão da raiva, devendo ser realizada com água corrente e sabão,
seguida de irrigação abundante com solução salina. O desbridamento de tecidos
desvitalizados e a remoção de corpos estranhos são fundamentais.
A sutura primária não é recomendada rotineiramente, sendo reservada para
situações específicas de risco funcional ou estético, como lesões extensas em
face, após adequada limpeza e com antibioticoterapia associada.
3. USO DE ANTIBIÓTICOS NAS MORDEDURAS
A antibioticoterapia está indicada de forma preemptiva em pacientes com maior
risco de infecção, incluindo ferimentos profundos, lesões em mãos e face,
pacientes imunossuprimidos, diabéticos, asplênicos ou com sinais inflamatórios
locais importantes. Nos casos de infecção estabelecida, o tratamento deve ser
terapêutico, com duração prolongada e cobertura adequada para gram-negativos,
gram-positivos e anaeróbios.
4. RAIVA HUMANA (CID-10: A82)
A raiva é uma antropozoonose viral causada pelo Lyssavirus, transmitida
principalmente pela saliva de animais infectados por meio de mordeduras,
arranhaduras ou lambedura de mucosas. No Brasil, cães e gatos são os principais
transmissores no meio urbano, enquanto morcegos hematófagos mantêm o ciclo
silvestre.
O período de incubação é variável, podendo durar semanas a meses. Após o início
dos sintomas neurológicos, a evolução é invariavelmente fatal. Dessa forma, toda
exposição potencial ao vírus deve ser tratada como emergência médica.
O atendimento inclui notificação compulsória imediata, avaliação do tipo de
ferimento e do animal agressor, além da indicação correta de vacina antirrábica e
soro antirrábico, conforme classificação do risco.
5. TÉTANO ACIDENTAL (CID-10: A35 )
O tétano é uma doença infecciosa não transmissível, causada pela toxina
produzida pelo Clostridium tetani, presente no solo e em materiais contaminados.
Ferimentos perfurocortantes, profundos ou contaminados aumentam
significativamente o risco de infecção.
A profilaxia do tétano baseia-se na avaliação do histórico vacinal do paciente e do
tipo de ferimento, com indicação de vacina antitetânica e, em casos específicos,
de imunoglobulina antitetânica ou soro antitetânico.
6. TRATAMENTO
O tratamento das mordeduras e arranhaduras inclui limpeza rigorosa da ferida,
antibioticoterapia quando indicada, analgesia, avaliação cirúrgica em casos
complexos e acompanhamento clínico.
A profilaxia da raiva humana deve ser iniciada o mais precoce…'),
  ('dpoc', (SELECT id FROM categorias WHERE nome = 'Pneumologia'), 'DPOC', 'J44', 'DOENÇA PULMONAR OBSTRUTIVA CRÔNICA (DPOC)
CID-10: J44
1. INTRODUÇÃO
A Doença Pulmonar Obstrutiva Crônica (DPOC) é uma condição respiratória
comum, prevenível e tratável, caracterizada por sintomas respiratórios persistentes
e limitação crônica e progressiva ao fluxo aéreo. Trata-se de uma das principais
causas de morbimortalidade no mundo, associada a elevado impacto social,
econômico e assistencial, especialmente nos serviços de atenção primária e
hospitalar.
A DPOC resulta de uma resposta inflamatória anormal do pulmão à exposição
prolongada a partículas e gases nocivos, sendo o tabagismo o principal fator de
risco. Outros fatores relevantes incluem exposição ocupacional, poluição
ambiental, queima de biomassa e predisposição genética, destacando-se a
deficiência de alfa-1-antitripsina.
2. ASPECTOS FISIOPATOLÓGICOS
A fisiopatologia da DPOC envolve inflamação crônica das vias aéreas, do
parênquima pulmonar e da vasculatura pulmonar, culminando em bronquite
crônica, enfisema pulmonar e doença de pequenas vias aéreas. O dano estrutural
leva à obstrução fixa ao fluxo aéreo, hiperinsuflação pulmonar, alteração da troca
gasosa e, nos estágios avançados, ao desenvolvimento de hipertensão pulmonar e
cor pulmonale.
3. QUADRO CLÍNICO
Os principais sintomas da DPOC incluem tosse crônica, produção de escarro e
dispneia progressiva, inicialmente aos esforços e posteriormente em repouso.
Outros sintomas frequentes são sibilância, sensação de aperto torácico, fadiga,
perda ponderal e redução da capacidade funcional. A doença apresenta curso
progressivo, intercalado por períodos de exacerbação, caracterizados por piora
aguda dos sintomas respiratórios.
O exame físico pode ser normal nas fases iniciais, tornando-se mais expressivo nos
estágios avançados, com sinais de hiperinsuflação pulmonar, uso de musculatura
acessória, cianose, estertores e sinais de insuficiência cardíaca direita.
4. DIAGNÓSTICO
O diagnóstico da DPOC deve ser suspeitado em indivíduos com sintomas
respiratórios crônicos associados a fatores de risco, especialmente tabagismo. A
confirmação diagnóstica é obrigatoriamente espirométrica, sendo caracterizada
por relação VEF1/CVF pós-broncodilatador inferior a 0,7, evidenciando obstrução
fixa ao fluxo aéreo.
Exames de imagem e outros testes complementares não confirmam o diagnóstico,
mas auxiliam na avaliação da gravidade, identificação de complicações e exclusão
de diagnósticos diferenciais.
5. TRATAMENTO
O tratamento da DPOC tem como objetivos aliviar os sintomas, melhorar a
qualidade de vida, reduzir a frequência e gravidade das exacerbações e, quando
possível, impactar positivamente na sobrevida.
As medidas não farmacológicas constituem a base do tratamento e incluem
cessação do tabagismo, vacinação, reabilitação pulmonar e educação em saúde.
A cessação do tabagismo é a única intervenção capaz de modificar a história
natural da doença, reduzindo o declínio acelerado da função pulmonar.
A terapia farmacológica é fundamentada no uso de broncodilatadores inalatórios,
sendo indicada de acordo com a intensidade dos sintomas e o risco de
exacerbações. Os broncodilatadores de longa duração, isolados ou em associação,
constituem o tratamento de manutenção. O uso de corticoides inalados é
reservado para pacientes com exacerbações frequentes e critérios específicos,
como eosinofilia sanguínea elevada.
Em casos selecionados, podem ser indicadas terapias adicionais, como
oxigenoterapia domiciliar prolongada, ventilação não invasiva domiciliar,
reabilitação pulmonar intensiva e, em situações específicas, intervenções
cirúrgicas ou endoscópicas.
As exacerbações agudas devem ser tratadas prontamente, com intensificação da
broncodilatação, uso criterioso de corticosteroides sistêmicos, antibióticos
quando há suspeita de infecção bacteriana e suporte ventilatório conforme a
gravidade.
6. EXAMES RECOMENDADOS
Exames para confirmação diagnóstica
•
Espirometria com prova broncodilatadora
Exames para avaliação inicial e seguimento
•
Radiografia…'),
  ('asma', (SELECT id FROM categorias WHERE nome = 'Pneumologia'), 'Asma Brônquica', 'J45', 'ASMA BRONQUICA
CID-10: J45
INTRODUÇÃO
A asma brônquica é uma doença respiratória crônica, inflamatória e heterogênea,
caracterizada por limitação variável ao fluxo aéreo, geralmente reversível
espontaneamente ou com tratamento. Apresenta curso intermitente, com períodos
de exacerbação e remissão, e constitui uma das principais causas de atendimentos
em urgência, hospitalizações e absenteísmo escolar e laboral.
Trata-se de condição de elevada prevalência no Brasil, associada a importante
impacto na qualidade de vida, sendo fundamental o diagnóstico precoce, o
adequado manejo clínico e o acompanhamento longitudinal na Atenção Primária à
Saúde.
ASPECTOS FISIOPATOLÓGICOS
A asma decorre de inflamação crônica das vias aéreas, envolvendo eosinófilos,
mastócitos, linfócitos T e mediadores inflamatórios, especialmente em fenótipos
associados à inflamação do tipo 2 (Th2). Esse processo leva à hiperresponsividade
brônquica, broncoconstrição, edema de mucosa e hipersecreção de muco.
Quando a inflamação não é adequadamente controlada, pode ocorrer
remodelamento das vias aéreas, com alterações estruturais permanentes,
resultando em limitação fixa ao fluxo aéreo.
QUADRO CLÍNICO
A asma manifesta-se por episódios recorrentes de dispneia, sibilância, tosse e
sensação de aperto torácico, frequentemente com piora noturna ou ao despertar.
Os sintomas variam em intensidade e frequência, podendo ser desencadeados por
alérgenos, infecções virais, exercício físico, exposição ao frio, poluição atmosférica
e uso de determinados medicamentos, como AINEs e betabloqueadores.
Entre as crises, o paciente pode permanecer assintomático, especialmente nas
formas leves da doença.
DIAGNÓSTICO
O diagnóstico da asma baseia-se na associação entre história clínica compatível e
demonstração objetiva de limitação variável ao fluxo aéreo. Ressalta-se que uma
espirometria normal não exclui o diagnóstico, especialmente se realizada em
período intercrítico.
Exames complementares auxiliam na confirmação diagnóstica, caracterização do
fenótipo inflamatório e exclusão de diagnósticos diferenciais, como DPOC,
insuficiência cardíaca e disfunção de pregas vocais.
TRATAMENTO
O objetivo do tratamento da asma é alcançar e manter o controle da doença,
prevenindo exacerbações, reduzindo sintomas, melhorando a função pulmonar e
evitando o remodelamento das vias aéreas.
O pilar do tratamento é o corticoide inalatório, que deve ser iniciado precocemente
em todos os pacientes diagnosticados. A terapia é organizada em etapas (steps),
com ajuste dinâmico conforme o nível de controle da doença.
Os broncodilatadores são utilizados como medicação de alívio, preferencialmente
associados ao corticoide inalatório, sendo o uso isolado de SABA progressivamente
desestimulado pelas diretrizes atuais.
Em pacientes com asma moderada a grave, podem ser indicadas associações com
LABA, LAMA, antagonistas de leucotrienos ou terapias biológicas, conforme o
fenótipo inflamatório e resposta terapêutica.
As exacerbações devem ser tratadas prontamente, com intensificação da
broncodilatação, uso de corticoide sistêmico por curto período e oxigenoterapia
quando indicada.
EXAMES INDICADOS NA ASMA BRÔNQUICA
Exames para CONFIRMAÇÃO DIAGNÓSTICA
•
Espirometria com prova broncodilatadora
→ Limitação ao fluxo aéreo com VEF1/CVF < 0,7
→ Resposta broncodilatadora positiva: aumento do VEF1 ≥ 200 mL e ≥ 12%
Exames quando a espirometria for NORMAL
•
Teste de broncoprovocação (metacolina, histamina ou exercício)
•
PICO DE FLUXO EXPIRATÓRIO (PFE) SERIADO
→ Variabilidade diurna > 20%
→ Aumento ≥ 15% após broncodilatador ou corticoide oral
EXAMES PARA AVALIAÇÃO DO FENÓTIPO INFLAMATÓRIO
•
Hemograma completo com eosinófilos
•
Fração exalada de óxido nítrico (FeNO)
•
IgE sérica total ou específica (RAST)
•
Testes cutâneos para aeroalérgenos (prick test)
EXAMES PARA AVALIAÇÃO COMPLEMENTAR
•
Radiografia de tórax (excluir diagnósticos diferenciais)
•
Gasometria arterial, em exacerbações graves
•
Oximetria de pulso, especialmente em c…'),
  ('tep', (SELECT id FROM categorias WHERE nome = 'Pneumologia'), 'Tromboembolismo Pulmonar (TEP)', 'I26', 'TROMBOEMBOLISMO PULMONAR (TEP)
CID-10: I26
INTRODUÇÃO
O tromboembolismo pulmonar é uma condição clínica potencialmente fatal,
caracterizada pela obstrução parcial ou total da circulação arterial pulmonar por
êmbolos, geralmente originados de trombos venosos profundos dos membros
inferiores ou da pelve. O TEP integra o espectro do tromboembolismo venoso,
juntamente com a trombose venosa profunda, e representa importante causa de
morbimortalidade, especialmente em pacientes hospitalizados, idosos,
portadores de neoplasias e indivíduos com fatores de risco trombótico.
O reconhecimento precoce e a instituição imediata do tratamento são
fundamentais para reduzir a mortalidade, prevenir recorrências e evitar
complicações como hipertensão pulmonar tromboembólica crônica.
FISIOPATOLOGIA
A fisiopatologia do tromboembolismo pulmonar envolve a formação de trombos
venosos, geralmente em veias profundas dos membros inferiores, que se
desprendem e migram pela circulação venosa até as artérias pulmonares. A
obstrução vascular resulta em aumento súbito da resistência vascular pulmonar,
sobrecarga do ventrículo direito, redução do débito cardíaco e comprometimento
da troca gasosa.
Além do efeito mecânico da obstrução, há liberação de mediadores vasoativos e
inflamatórios que agravam a vasoconstrição pulmonar, contribuindo para a
hipoxemia e instabilidade hemodinâmica. Em casos graves, pode ocorrer choque
obstrutivo e morte súbita.
FATORES DE RISCO
Os principais fatores de risco para tromboembolismo pulmonar estão relacionados
à tríade de Virchow: estase venosa, lesão endotelial e estado de
hipercoagulabilidade. Destacam-se imobilização prolongada, cirurgias recentes,
trauma, neoplasias, gestação e puerpério, uso de anticoncepcionais hormonais,
trombofilias, insuficiência cardíaca, obesidade, idade avançada e história prévia de
tromboembolismo venoso.
QUADRO CLÍNICO
O quadro clínico do TEP é variável e pode ir desde apresentações assintomáticas
até colapso cardiovascular. Os sintomas mais comuns incluem dispneia de início
súbito, dor torácica ventilatório-dependente, taquipneia, taquicardia e tosse. Pode
ocorrer hemoptise, síncope e sinais de insuficiência ventricular direita nos casos
mais graves.
O exame físico pode revelar hipoxemia, estertores discretos, sopro sistólico
tricúspide, turgência jugular e sinais de choque em apresentações de alto risco.
Ressalta-se que o TEP deve ser sempre considerado no diagnóstico diferencial de
pacientes com dispneia aguda sem causa aparente.
DIAGNÓSTICO
O diagnóstico do tromboembolismo pulmonar baseia-se na avaliação clínica
inicial, estratificação da probabilidade pré-teste e confirmação por exames de
imagem. Escores clínicos, como Wells ou Genebra, auxiliam na estimativa da
probabilidade clínica e orientam a solicitação de exames complementares.
Em pacientes com baixa probabilidade clínica, a dosagem do dímero-D pode ser
utilizada para exclusão do diagnóstico. Em pacientes com probabilidade
intermediária ou alta, exames de imagem devem ser prontamente solicitados,
sendo a angiotomografia computadorizada de tórax o método de escolha.
TRATAMENTO
O tratamento do tromboembolismo pulmonar deve ser iniciado o mais
precocemente possível, mesmo diante de suspeita clínica elevada, antes da
confirmação diagnóstica, desde que não haja contraindicações.
A anticoagulação constitui a base do tratamento e deve ser instituída em
praticamente todos os pacientes. As opções incluem heparina não fracionada,
heparinas de baixo peso molecular, fondaparinux e anticoagulantes orais diretos. A
escolha do agente depende da gravidade do quadro, função renal, risco de
sangramento e contexto clínico.
Pacientes com TEP de alto risco, caracterizado por instabilidade hemodinâmica ou
choque, devem ser avaliados para trombólise sistêmica, desde que não
apresentem contraindicações. Em casos selecionados, podem ser indicadas
embolectomia cirúrgica ou terapias percutâneas.
O tempo de anticoagulação varia conforme o fator desencadeante, pode…'),
  ('defic_vitaminicas', (SELECT id FROM categorias WHERE nome = 'Pediatria'), 'Deficiências Vitamínicas e Profilaxias', 'E56', 'DEFICIÊNCIAS VITAMÍNICAS E PROFILAXIAS NA INFÂNCIA
CID-10: E56
INTRODUÇÃO
As deficiências vitamínicas constituem importante problema de saúde pública na
infância, especialmente em contextos de vulnerabilidade socioeconômica,
desnutrição, aleitamento inadequado, síndromes de má absorção e doenças
crônicas. As vitaminas são micronutrientes essenciais, não sintetizados pelo
organismo humano em quantidades suficientes, sendo indispensáveis para o
crescimento, desenvolvimento neurológico, imunidade, metabolismo energético e
manutenção da integridade de tecidos e órgãos.
A identificação precoce das hipovitaminoses e a implementação adequada das
estratégias de profilaxia são fundamentais para prevenir morbidades evitáveis,
sequelas irreversíveis e aumento da mortalidade infantil.
ASPECTOS GERAIS E CLASSIFICAÇÃO
As vitaminas são classificadas de acordo com sua solubilidade em lipossolúveis (A,
D, E e K) e hidrossolúveis (complexo B e vitamina C). As vitaminas lipossolúveis
possuem maior capacidade de armazenamento corporal e, consequentemente,
maior risco de toxicidade quando administradas em excesso. Já as hidrossolúveis
apresentam menor reserva orgânica e manifestações clínicas mais precoces em
situações de deficiência.
As causas das deficiências vitamínicas incluem ingestão inadequada, aumento das
necessidades metabólicas, distúrbios de absorção intestinal, doenças hepáticas,
pancreáticas e uso de medicamentos que interferem no metabolismo vitamínico.
QUADRO CLÍNICO DAS PRINCIPAIS DEFICIÊNCIAS
A deficiência de vitamina A manifesta-se principalmente por alterações oculares,
como cegueira noturna, xeroftalmia, manchas de Bitot e, nos casos mais graves,
queratomalácia, além de prejuízo imunológico e aumento da suscetibilidade a
infecções.
As deficiências do complexo B apresentam manifestações variadas. A deficiência
de tiamina (B1) pode causar beribéri, com comprometimento neurológico e
cardíaco. A deficiência de riboflavina (B2) cursa com queilite, glossite e alterações
oculares. A deficiência de niacina (B3) caracteriza-se pela tríade clássica da
pelagra: dermatite, diarreia e demência. As deficiências de folato (B9) e cobalamina
(B12) levam à anemia megaloblástica, podendo cursar com manifestações
neurológicas, especialmente na deficiência de vitamina B12.
A deficiência de vitamina C, conhecida como escorbuto, provoca fragilidade
capilar, sangramentos, dor óssea, dificuldade de cicatrização e alterações
musculoesqueléticas.
A deficiência de vitamina D, embora abordada em protocolos específicos de
metabolismo ósseo, está associada ao raquitismo e alterações da mineralização
óssea.
A deficiência de vitamina E manifesta-se por distúrbios neuromusculares, anemia
hemolítica e alterações oftalmológicas, especialmente em crianças com
síndromes de má absorção de gorduras.
A deficiência de vitamina K é particularmente relevante no período neonatal,
podendo causar doença hemorrágica do recém-nascido, caracterizada por
sangramentos e aumento do tempo de protrombina.
DIAGNÓSTICO
O diagnóstico das deficiências vitamínicas baseia-se predominantemente na
avaliação clínica detalhada, associada à história alimentar, condições
socioeconômicas e presença de fatores de risco. Exames laboratoriais são
utilizados para confirmação diagnóstica em situações selecionadas e para
monitoramento terapêutico.
TRATAMENTO
O tratamento das deficiências vitamínicas consiste na reposição específica da
vitamina deficiente, por via oral ou parenteral, conforme a gravidade do quadro
clínico e a capacidade de absorção intestinal. Em situações de manifestações
graves, como alterações neurológicas, hemorrágicas ou risco iminente de
sequelas, a reposição deve ser imediata.
Além da reposição vitamínica, é fundamental a orientação nutricional adequada, o
tratamento das causas subjacentes e o acompanhamento longitudinal da criança
na Atenção Primária à Saúde.
PROFILAXIAS NA INFÂNCIA
As estratégias de profilaxia incluem programas nacionais de suplementação, como
o Programa Naci…'),
  ('anemias_inf', (SELECT id FROM categorias WHERE nome = 'Pediatria'), 'Anemias na Infância', 'D50', 'ANEMIAS NA INFÂNCIA
CID-10: D50
INTRODUÇÃO
As anemias constituem um dos agravos hematológicos mais prevalentes na
infância, com impacto significativo no crescimento, desenvolvimento
neuropsicomotor e desempenho cognitivo. Caracterizam-se pela redução da
concentração de hemoglobina abaixo dos valores esperados para idade e sexo,
comprometendo a capacidade de transporte de oxigênio aos tecidos. Entre as
anemias, destacam-se a anemia ferropriva, de elevada prevalência e
acompanhamento predominantemente ambulatorial, e a anemia falciforme,
condição genética crônica associada a crises agudas graves e elevado risco de
complicações.
O reconhecimento precoce, a correta investigação etiológica e a implementação
adequada das medidas terapêuticas e profiláticas são fundamentais para prevenir
sequelas irreversíveis, especialmente nos primeiros anos de vida.
ASPECTOS FISIOPATOLÓGICOS
A anemia resulta da diminuição da massa eritrocitária circulante, seja por redução
da produção de hemácias, aumento da destruição ou perda sanguínea. Na infância,
a deficiência de ferro é a principal causa, estando associada à ingestão
inadequada, aumento das necessidades fisiológicas, perdas crônicas e
parasitoses intestinais. O ferro é elemento essencial para a síntese da hemoglobina
e participa de múltiplos processos metabólicos, respiratórios e imunológicos.
A deficiência de ferro ocorre de forma progressiva, iniciando-se pela depleção dos
estoques corporais, seguida da deficiência funcional e, por fim, da anemia
ferropriva instalada. Esse processo compromete o crescimento físico e o
desenvolvimento cognitivo, sendo que parte dos prejuízos neurológicos pode
persistir mesmo após tratamento adequado.
QUADRO CLÍNICO
As manifestações clínicas variam conforme a gravidade e a velocidade de
instalação da anemia. Em geral, observam-se palidez cutaneomucosa, apatia,
irritabilidade, fadiga, taquicardia, diminuição do apetite e atraso no crescimento e
desenvolvimento. Crianças com anemia crônica apresentam maior frequência de
infecções, diarreias recorrentes e baixo rendimento cognitivo.
Na anemia ferropriva, podem ocorrer alterações do paladar, pica, alterações
dentárias e prejuízo da imunidade. Já nas anemias hereditárias, como a anemia
falciforme, predominam episódios dolorosos, infecções graves, alterações
esplênicas e comprometimento multissistêmico.
DIAGNÓSTICO
O diagnóstico das anemias baseia-se na avaliação clínica associada a exames
laboratoriais. O hemograma completo é o principal exame inicial, permitindo
identificar a redução da hemoglobina, alterações do hematócrito e índices
hematimétricos, como microcitose e hipocromia, sugestivos de anemia ferropriva.
A investigação etiológica deve ser progressiva e direcionada, evitando solicitações
indiscriminadas. Exames adicionais são indicados conforme a suspeita clínica,
estágio da deficiência e resposta ao tratamento instituído.
TRATAMENTO
O tratamento da anemia ferropriva consiste na reposição de ferro elementar por via
oral, associada à correção dos fatores etiológicos e orientação alimentar
adequada. A reposição deve ser mantida por tempo suficiente para normalizar a
hemoglobina e reconstituir os estoques corporais, geralmente por período mínimo
de três meses.
A resposta terapêutica deve ser monitorada por meio de exames laboratoriais e
avaliação clínica, observando-se melhora do estado geral, ganho ponderal e
recuperação da atividade habitual da criança.
Nas anemias não ferroprivas, como anemia falciforme, o tratamento é específico e
inclui acompanhamento especializado, profilaxia de infecções, manejo das crises
dolorosas e orientação genética, não sendo indicada a suplementação de ferro,
salvo comprovação laboratorial de deficiência associada.
PROFILAXIA DAS ANEMIAS
A prevenção das anemias, especialmente da anemia ferropriva, constitui medida
prioritária em saúde pública. A suplementação profilática de ferro deve ser iniciada
precocemente, conforme as recomendações do Ministério da Saúde, com início a
part…'),
  ('bronquiolite', (SELECT id FROM categorias WHERE nome = 'Pediatria'), 'Bronquiolite Viral Aguda (BVA)', 'J21', 'BRONQUIOLITE VIRAL AGUDA (BVA)
CID-10: J21
1. DEFINIÇÃO E CONTEXTUALIZAÇÃO
A bronquiolite viral aguda é uma infecção do trato respiratório inferior, caracterizada
pelo primeiro episódio de sibilância em lactentes, geralmente menores de dois
anos, associada a sinais clínicos de infecção viral respiratória. Trata-se de uma das
principais causas de internação hospitalar em lactentes, especialmente entre 2 e 6
meses de idade, apresentando marcada sazonalidade nos meses de outono e
inverno. O principal agente etiológico é o vírus sincicial respiratório (VSR), embora
outros vírus respiratórios também possam estar envolvidos.
2. ETIOLOGIA E FISIOPATOLOGIA
O VSR apresenta tropismo pelo epitélio dos bronquíolos, promovendo necrose
celular, inflamação da submucosa, edema e produção excessiva de muco. Esses
mecanismos levam à obstrução parcial ou completa das vias aéreas distais,
ocasionando aprisionamento aéreo, hiperinsuflação pulmonar e, em casos mais
graves, áreas de atelectasia. A broncoconstrição pode estar presente, porém tem
papel secundário no processo obstrutivo.
3. QUADRO CLÍNICO
O quadro clínico inicia-se geralmente como uma infecção de vias aéreas
superiores, com coriza hialina, tosse, obstrução nasal e febre baixa. Após o terceiro
ao sexto dia de evolução, ocorre piora progressiva dos sintomas respiratórios, com
surgimento de taquipneia, sibilância, esforço respiratório e dificuldade
alimentar. Em lactentes jovens, especialmente prematuros, pode ocorrer apneia
como manifestação inicial. A doença apresenta curso autolimitado, com duração
média de 10 a 12 dias, embora a tosse possa persistir por semanas.
4. EXAME FÍSICO
Ao exame físico, observam-se sibilos expiratórios difusos, roncos, prolongamento
do tempo expiratório e sinais de desconforto respiratório, como tiragens subcostais
e intercostais, batimento de asas nasais, retração de fúrcula e gemência. A
oximetria de pulso é fundamental, sendo considerada indicativa de gravidade
saturação de oxigênio inferior a 92% em ar ambiente.
5. DIAGNÓSTICO
O diagnóstico da bronquiolite viral aguda é essencialmente clínico, baseado na
história, evolução típica da doença e achados do exame físico. Não há indicação de
exames laboratoriais ou de imagem de rotina nos casos leves.
EXAMES
Os exames complementares devem ser solicitados apenas em situações
específicas, como quadros graves, evolução atípica ou necessidade de internação
hospitalar.
Exames que podem ser solicitados:
•
Radiografia de tórax: indicada em casos graves, suspeita de complicações
ou diagnóstico diferencial, podendo mostrar hiperinsuflação pulmonar,
retificação dos arcos costais, infiltrado intersticial e atelectasias.
•
Testes virais (ex.: detecção de VSR): indicados em casos graves ou
hospitalizados, principalmente para controle de isolamento, não sendo
úteis para guiar tratamento.
•
Gasometria arterial: indicada em casos de insuficiência respiratória ou
hipoxemia persistente.
Exames NÃO recomendados de rotina:
•
Hemograma.
•
Proteína C-reativa.
•
Cultura bacteriana.
6. TRATAMENTO
Não existe tratamento etiológico específico para a bronquiolite viral aguda. O
manejo baseia-se fundamentalmente em medidas de suporte.
Tratamento ambulatorial
Indicado para lactentes sem sinais de gravidade, com boa aceitação alimentar e
saturação adequada. Consiste em:
•
Lavagem nasal frequente com soro fisiológico.
•
Inalação com solução salina para fluidificação de secreções.
•
Hidratação oral adequada.
•
Antitérmicos para controle da febre.
•
Orientações aos responsáveis quanto aos sinais de alerta.
Tratamento hospitalar
Indicado nos casos com sinais de gravidade, hipoxemia, dificuldade alimentar,
desidratação ou risco de apneia. Inclui:
•
Oxigenoterapia quando saturação ≤ 92%.
•
Hidratação venosa ou enteral conforme aceitação.
•
Mínima manipulação do paciente.
•
Monitorização clínica e oximétrica contínua.
•
Suporte ventilatório não invasivo (cânula nasal de alto fluxo ou CPAP) nos
casos moderados a graves.
•
Ventilação mecânica invasiv…'),
  ('ivas_inf', (SELECT id FROM categorias WHERE nome = 'Pediatria'), 'IVAS na Infância', 'J06.8', 'INFECÇÕES DE VIAS AÉREAS SUPERIORES (IVAS) NA INFÂNCIA
CID-10: J06. 8
INTRODUÇÃO
As infecções de vias aéreas superiores (IVAS) representam o grupo de doenças
infecciosas mais frequente na infância, sendo causa importante de atendimentos
ambulatoriais, absenteísmo escolar e uso inadequado de antibióticos. Incluem um
conjunto de condições que acometem o trato respiratório superior, como resfriado
comum, rinossinusite, otite média aguda, faringite, laringite, crupe e epiglotite.
A maioria das IVAS possui etiologia viral e curso autolimitado, exigindo abordagem
clínica criteriosa para diferenciar quadros benignos daqueles que demandam
antibioticoterapia ou intervenção hospitalar, prevenindo complicações locais e
sistêmicas.
ASPECTOS GERAIS E ETIOLOGIA
Os principais agentes etiológicos das IVAS são vírus respiratórios, como rinovírus,
coronavírus, adenovírus, vírus sincicial respiratório, influenza e parainfluenza. As
infecções bacterianas representam menor proporção, porém estão associadas a
maior risco de complicações, destacando-se Streptococcus pneumoniae,
Haemophilus influenzae não tipável, Moraxella catarrhalis e Streptococcus
pyogenes.
A imaturidade do sistema imunológico infantil, a exposição em creches e escolas,
o tabagismo passivo e as condições socioambientais desfavoráveis contribuem
para a elevada incidência dessas infecções.
QUADRO CLÍNICO GERAL
De modo geral, as IVAS iniciam-se com sintomas inespecíficos, como coriza,
obstrução nasal, espirros, tosse, febre baixa e mal-estar. A evolução clínica e o
predomínio de determinados sinais permitem a diferenciação entre as entidades
clínicas específicas.
O resfriado comum caracteriza-se por sintomas leves e autolimitados. A
persistência dos sintomas por mais de dez dias, piora súbita após melhora inicial
ou quadro grave com febre alta e secreção purulenta sugerem rinossinusite
bacteriana aguda. A otite média aguda manifesta-se por otalgia, febre e
irritabilidade, sendo o exame otoscópico fundamental para o diagnóstico.
A faringite viral cursa com odinofagia leve e sintomas respiratórios associados,
enquanto a faringite estreptocócica apresenta febre alta, odinofagia intensa e
ausência de tosse, estando associada a risco de complicações não supurativas,
como febre reumática. O crupe caracteriza-se por tosse “ladrante”, rouquidão e
estridor inspiratório, geralmente com piora noturna. A epiglotite, embora rara após
a introdução da vacina contra Haemophilus influenzae tipo B, constitui emergência
médica, com evolução rápida para obstrução de vias aéreas.
DIAGNÓSTICO
O diagnóstico das IVAS é predominantemente clínico, baseado na anamnese e no
exame físico detalhado. A identificação de sinais de gravidade, como toxemia,
desconforto respiratório, estridor em repouso, prostração importante, dificuldade
para ingestão hídrica e sinais neurológicos, é fundamental para definição da
conduta e necessidade de encaminhamento hospitalar.
Exames complementares não devem ser solicitados de rotina, sendo indicados
apenas em situações específicas ou na suspeita de complicações.
TRATAMENTO
O tratamento das IVAS é majoritariamente sintomático, uma vez que a maior parte
dos quadros é de etiologia viral. As medidas incluem controle da febre com
antitérmicos, lavagem nasal com solução salina, hidratação adequada, elevação
da cabeceira e repouso relativo.
A antibioticoterapia deve ser reservada para situações bem definidas, como
rinossinusite bacteriana aguda, otite média aguda com critérios clínicos, faringite
estreptocócica confirmada ou fortemente suspeita e epiglotite. O uso
indiscriminado de antibióticos deve ser evitado, considerando o risco de
resistência bacteriana e efeitos adversos.
No crupe, o manejo baseia-se na administração de corticosteroides sistêmicos ou
inalados, associados à adrenalina inalatória nos casos moderados a graves. A
epiglotite requer internação imediata em unidade de terapia intensiva, garantia de
via aérea e antibioticoterapia intravenosa.
EXAMES INDICADOS NAS IVAS (QU…'),
  ('tb_inf', (SELECT id FROM categorias WHERE nome = 'Pediatria'), 'Tuberculose na Infância', 'P37.0', 'TUBERCULOSE NA INFANCIA
CID-10:P37.0
INTRODUÇÃO
A tuberculose (TB) é uma doença infecciosa e transmissível, causada pelo
Mycobacterium tuberculosis, com elevada relevância epidemiológica no Brasil. Na
infância, a tuberculose apresenta características próprias, relacionadas à
imaturidade imunológica, maior risco de formas graves e dificuldade de
confirmação bacteriológica, uma vez que as crianças são, em sua maioria,
paucibacilíferas.
A identificação precoce da infecção e da doença tuberculosa ativa, bem como o
manejo adequado da infecção latente por tuberculose (ILTB), são estratégias
fundamentais para reduzir a morbimortalidade infantil e interromper a cadeia de
transmissão da doença.
AGENTE ETIOLÓGICO E TRANSMISSÃO
O agente etiológico da tuberculose é o Mycobacterium tuberculosis, bacilo álcoolácido resistente, aeróbio estrito e de crescimento lento. A transmissão ocorre por
via aérea, através da inalação de aerossóis eliminados por indivíduos com
tuberculose pulmonar ou laríngea bacilífera.
As crianças, em geral, desenvolvem tuberculose na primoinfecção e apresentam
baixa carga bacilar, não sendo consideradas fontes relevantes de transmissão.
Ambientes fechados, pouco ventilados e com baixa incidência de luz solar
favorecem a disseminação do bacilo.
FISIOPATOLOGIA
Após a inalação, os bacilos alcançam os alvéolos pulmonares, sendo fagocitados
por macrófagos. Ocorre resposta inflamatória local, com formação de granulomas,
que têm como objetivo conter a infecção. Na maioria dos casos, o sistema
imunológico consegue controlar o bacilo, resultando em cura ou infecção latente.
Em crianças pequenas, desnutridas ou imunodeprimidas, o controle imunológico
pode ser insuficiente, favorecendo a progressão para a doença ativa, incluindo
formas extrapulmonares e disseminadas, como a tuberculose miliar e a
meningoencefalite tuberculosa.
QUADRO CLÍNICO
O quadro clínico da tuberculose na infância é frequentemente inespecífico. Na
tuberculose pulmonar, os principais sintomas incluem tosse persistente por mais
de duas a três semanas, febre prolongada, geralmente vespertina, perda ponderal,
sudorese noturna, adinamia e irritabilidade.
Crianças menores podem apresentar manifestações menos específicas, como
dificuldade alimentar, atraso no crescimento, infecções respiratórias de repetição
e pneumonia que não responde ao tratamento antibiótico habitual, devendo
sempre levantar a suspeita de tuberculose.
As formas extrapulmonares mais comuns na infância incluem tuberculose
ganglionar, pleural, osteoarticular, meningoencefalite tuberculosa e tuberculose
miliar, cada uma com manifestações clínicas relacionadas ao órgão acometido.
DIAGNÓSTICO
O diagnóstico da tuberculose na infância é desafiador e baseia-se na combinação
de dados clínicos, epidemiológicos, radiológicos e laboratoriais. A confirmação
bacteriológica, embora desejável, nem sempre é possível.
A radiografia de tórax é exame fundamental na investigação inicial, podendo revelar
linfadenomegalia hilar ou paratraqueal, consolidações, cavitações, padrão miliar
ou derrame pleural. Em crianças, a linfadenomegalia hilar é o achado mais
frequente.
O Ministério da Saúde recomenda o uso de sistemas de pontuação diagnóstica em
crianças com suspeita de tuberculose pulmonar e exames bacteriológicos
negativos, permitindo o início precoce do tratamento quando a probabilidade
diagnóstica é elevada.
INFECÇÃO LATENTE POR TUBERCULOSE (ILTB)
A ILTB caracteriza-se pela presença do Mycobacterium tuberculosis no organismo
sem manifestações clínicas ou radiológicas de doença ativa. O diagnóstico é
realizado por meio da prova tuberculínica (PPD) ou testes de liberação de
interferon-gama (IGRA), associados à exclusão de tuberculose ativa.
Em crianças, considera-se PPD ≥ 5 mm como positivo, independentemente da
vacinação prévia com BCG. Crianças contactantes de casos bacilíferos devem ser
investigadas sistematicamente, mesmo na ausência de sintomas.
TRATAMENTO
O tratamento da tuberculose na infância é padronizado pe…'),
  ('itu_ped', (SELECT id FROM categorias WHERE nome = 'Pediatria'), 'ITU em Pediatria', '(N39)', 'INFECÇÃO DO TRATO URINÁRIO (ITU) EM PEDIATRIA
(CID-10:37.0)
INTRODUÇÃO
A infecção do trato urinário (ITU) é definida como a proliferação de um único agente
patogênico em qualquer segmento do trato urinário, confirmada por urocultura
obtida por método de coleta adequado. Trata-se da infecção bacteriana mais
comum na infância, com importância clínica significativa devido ao risco de
complicações renais, especialmente em lactentes e crianças pequenas.
A ITU pode acometer desde o trato urinário inferior, caracterizando a cistite, até o
trato urinário superior, configurando a pielonefrite. A diferenciação entre essas
formas nem sempre é possível apenas com base nos dados clínicos, sobretudo em
crianças menores, o que reforça a necessidade de abordagem sistematizada e
precoce.
EPIDEMIOLOGIA E FATORES DE RISCO
A prevalência da ITU varia conforme a idade e o sexo. Em neonatos e lactentes até
um ano de vida, a infecção acomete ambos os sexos de forma semelhante,
podendo ser ligeiramente mais frequente em meninos no primeiro ano. Após esse
período, há nítido predomínio no sexo feminino, em razão das características
anatômicas da uretra feminina.
Os principais fatores de risco associados à ITU em Pediatria incluem alterações
anatômicas do trato urinário, como refluxo vesicoureteral, válvula de uretra
posterior e uropatias obstrutivas, ausência de circuncisão em meninos, período
neonatal, imunossupressão, disfunção vesical e intestinal, constipação, enurese
diurna, atividade sexual em adolescentes e uso de cateter vesical.
FISIOPATOLOGIA E ETIOLOGIA
O principal mecanismo fisiopatológico da ITU é a ascensão bacteriana a partir da
região perineal até o trato urinário. A via hematogênica é rara e ocorre
principalmente no período neonatal. O agente etiológico mais frequente é a
Escherichia coli, responsável por até 90% dos casos. Outras enterobactérias, como
Klebsiella, Enterobacter, Citrobacter e Serratia, também podem estar envolvidas.
O Proteus sp. é frequentemente associado a quadros obstrutivos e alcalinização do
pH urinário. Em adolescentes e mulheres jovens, destaca-se o Staphylococcus
saprophyticus como agente etiológico relevante. Em pacientes imunossuprimidos
ou em uso prolongado de antibióticos, pode ocorrer infecção por Candida albicans.
A cistite hemorrágica viral, causada por adenovírus, constitui diagnóstico
diferencial importante, cursando com urocultura negativa.
QUADRO CLÍNICO
As manifestações clínicas da ITU variam conforme a faixa etária. Em neonatos, os
sintomas são inespecíficos, incluindo hipotermia, icterícia, recusa alimentar,
sucção débil, distensão abdominal e baixo ganho ponderal. Em lactentes, a febre
sem foco aparente é a principal manifestação, sendo a ITU uma das causas mais
importantes desse quadro.
Em crianças maiores, o quadro clínico torna-se mais específico, com presença de
disúria, polaciúria, dor abdominal, dor lombar, enurese secundária e, em casos de
pielonefrite, febre alta e comprometimento do estado geral.
A bacteriúria assintomática caracteriza-se pela presença de crescimento
bacteriano significativo na urocultura, sem sinais ou sintomas de infecção urinária,
não devendo ser tratada com antibióticos.
DIAGNÓSTICO
O diagnóstico da ITU é clínico-laboratorial. A urocultura é considerada o padrãoouro para confirmação diagnóstica, sendo indispensável a coleta adequada da
urina conforme a idade e o controle esfincteriano da criança. Em crianças com
controle esfincteriano, a coleta deve ser realizada por jato médio. Em crianças sem
controle, a coleta deve ser feita por cateterismo vesical ou punção suprapúbica.
A coleta por saco coletor apresenta alto risco de contaminação e só deve ser
valorizada quando o resultado for negativo, sendo útil apenas como método de
triagem inicial.
O exame de urina tipo I auxilia no diagnóstico inicial e permite o início precoce do
tratamento, não devendo a conduta terapêutica aguardar o resultado da urocultura
quando houver forte suspeita clínica.
TRATAMENTO
O tratamento da …'),
  ('has_ped', (SELECT id FROM categorias WHERE nome = 'Pediatria'), 'HAS na Criança e no Adolescente', 'I10', 'HIPERTENSÃO ARTERIAL NA CRIANÇA E NO ADOLESCENTE
(CID-10: I10)
INTRODUÇÃO
A hipertensão arterial sistêmica (HAS) na infância e adolescência é uma condição
clínica cada vez mais reconhecida, associada ao aumento da obesidade,
sedentarismo e hábitos alimentares inadequados, além de doenças renais e
cardiovasculares congênitas ou adquiridas. Diferentemente do adulto, a
hipertensão arterial em crianças apresenta elevada prevalência de causas
secundárias, especialmente em faixas etárias mais jovens, exigindo investigação
clínica criteriosa.
A identificação precoce da HAS pediátrica é fundamental, uma vez que níveis
pressóricos elevados na infância tendem a persistir na vida adulta, aumentando o
risco de doença cardiovascular precoce, lesão de órgãos-alvo e mortalidade.
DEFINIÇÃO E CLASSIFICAÇÃO
A hipertensão arterial na criança e no adolescente é definida a partir de valores de
pressão arterial sistólica e/ou diastólica maiores ou iguais ao percentil 95,
considerando sexo, idade e estatura, obtidos em três medidas realizadas em
ocasiões diferentes.
Valores pressóricos abaixo do percentil 90 são considerados normais. Valores entre
os percentis 90 e 95 caracterizam pressão arterial elevada. A hipertensão arterial é
classificada em estágio 1 ou estágio 2 conforme a magnitude da elevação em
relação ao percentil 95.
O parâmetro antropométrico utilizado para a correta classificação da pressão
arterial é a estatura, e não o peso ou a idade isoladamente.
MEDIDA DA PRESSÃO ARTERIAL
A aferição da pressão arterial deve ser realizada em todas as crianças a partir dos
três anos de idade, pelo menos uma vez ao ano. Em crianças menores de três
anos, a medida é indicada em situações específicas, como histórico neonatal de
risco, doenças renais, cardiopatias congênitas, uso de medicamentos que elevam
a pressão arterial, transplantes, doenças sistêmicas associadas à HAS e suspeita
de hipertensão intracraniana.
A técnica adequada de aferição é fundamental para evitar erros diagnósticos. Devese utilizar manguito apropriado ao tamanho do braço da criança, respeitando a
circunferência braquial, com método preferencialmente auscultatório. O uso de
manguitos inadequados pode levar à superestimação ou subestimação dos valores
pressóricos.
FATORES DE RISCO
Diversos fatores contribuem para o desenvolvimento da hipertensão arterial na
infância, destacando-se obesidade e sobrepeso, ingestão excessiva de sódio,
sedentarismo, histórico familiar de hipertensão, baixo peso ao nascer, restrição de
crescimento intrauterino, inflamação crônica, elevação do ácido úrico sérico e
condições socioambientais desfavoráveis.
As doenças renais constituem a principal causa de hipertensão arterial secundária
na população pediátrica, especialmente em crianças menores.
QUADRO CLÍNICO
A maioria das crianças e adolescentes hipertensos é assintomática. Quando
presentes, os sintomas costumam ser inespecíficos, como cefaleia, irritabilidade,
alterações do sono e fadiga. Em casos mais graves, podem ocorrer sinais de
comprometimento de órgãos-alvo, como edema, hematúria, dispneia, dor torácica,
palpitações, alterações visuais e manifestações neurológicas.
DIAGNÓSTICO E INVESTIGAÇÃO
O diagnóstico da HAS é confirmado pela persistência de valores pressóricos
elevados em três medidas distintas. Após a confirmação, deve-se proceder à
investigação etiológica para diferenciar hipertensão primária de secundária.
A avaliação deve incluir anamnese detalhada com investigação de dados
neonatais, crescimento e desenvolvimento, histórico familiar, hábitos alimentares,
prática de atividade física e uso de medicamentos. O exame físico deve contemplar
avaliação antropométrica, pulsos periféricos, frequência cardíaca, pesquisa de
sinais de coarctação da aorta, exame neurológico e fundoscopia.
EXAMES INDICADOS NA AVALIAÇÃO DA HIPERTENSÃO ARTERIAL PEDIÁTRICA
Exames laboratoriais iniciais (todos os pacientes)
•
Urina tipo I
•
Urocultura
•
Hemograma completo
•
Eletrólitos séricos
•
Ureia e creatinina
•
Glice…'),
  ('pneumonia_inf', (SELECT id FROM categorias WHERE nome = 'Pediatria'), 'Pneumonias na Infância', 'J12', 'PNEMONIAS NA INFÂNCIA
(CID-10: J12)
INTRODUÇÃO
A pneumonia é uma infecção do trato respiratório inferior caracterizada pela
inflamação do parênquima pulmonar, particularmente dos alvéolos, em resposta à
invasão por agentes infecciosos, predominantemente vírus e bactérias. Representa
uma das principais causas de morbimortalidade infantil, especialmente em países
em desenvolvimento, sendo considerada a principal causa de morte por infecção
respiratória em crianças menores de cinco anos.
Nas últimas décadas, a incidência e a gravidade das pneumonias na infância
reduziram significativamente em decorrência da ampliação do acesso aos serviços
de saúde e, sobretudo, da imunização infantil, destacando-se as vacinas contra
Streptococcus pneumoniae e Haemophilus influenzae tipo b. Apesar disso, a
pneumonia permanece como condição clínica de alta relevância na prática
pediátrica, exigindo abordagem sistematizada e baseada em evidências.
CLASSIFICAÇÃO
As pneumonias podem ser classificadas de acordo com o local de aquisição, sendo
divididas em pneumonia adquirida na comunidade e pneumonia hospitalar ou
nosocomial, quando ocorre após 48 horas de internação. Também podem ser
classificadas conforme o agente etiológico em pneumonias virais, bacterianas e,
mais raramente, químicas ou aspirativas.
Do ponto de vista clínico e didático, as pneumonias bacterianas subdividem-se em
pneumonia típica, pneumonia afebril do lactente e pneumonia atípica. As
pneumonias virais constituem o grupo mais frequente em lactentes e préescolares.
FATORES DE RISCO
Diversos fatores aumentam o risco de pneumonia na infância, incluindo
desnutrição, desmame precoce, ausência ou atraso no esquema vacinal,
frequência a creches, baixo nível socioeconômico, aglomeração domiciliar, baixo
peso ao nascer, prematuridade, tabagismo passivo e presença de doenças
crônicas, como cardiopatias congênitas, broncodisplasia pulmonar, asma não
controlada, fibrose cística, anemia falciforme, doenças neurológicas e
imunodeficiências primárias ou secundárias.
ETIOLOGIA
A etiologia das pneumonias varia conforme a faixa etária. No período neonatal,
predominam Streptococcus do grupo B, bactérias Gram-negativas,
Staphylococcus aureus, Listeria monocytogenes e vírus. Em lactentes jovens, os
vírus respiratórios são os principais agentes, seguidos pelo pneumococo,
Chlamydia trachomatis e Ureaplasma urealyticum. Em crianças de 7 meses a 5
anos, os vírus continuam predominantes, com destaque para o vírus sincicial
respiratório, enquanto o pneumococo permanece como principal agente
bacteriano. Em crianças maiores de cinco anos, aumentam os casos de pneumonia
atípica, causados principalmente por Mycoplasma pneumoniae e Chlamydophila
pneumoniae.
De forma geral, excetuando-se o período neonatal, o Streptococcus pneumoniae é
o principal agente das pneumonias bacterianas na infância, inclusive nos quadros
complicados.
QUADRO CLÍNICO
O quadro clínico da pneumonia depende da idade, do estado nutricional, da
presença de comorbidades, da gravidade e do agente etiológico. Os sintomas mais
frequentes incluem febre, tosse, taquipneia, desconforto respiratório, tiragens
subcostais, estertores crepitantes à ausculta, hipoxemia e, em alguns casos, dor
torácica.
A avaliação da frequência respiratória é fundamental para o diagnóstico clínico,
devendo ser realizada em ambiente calmo e sem obstrução nasal. Considera-se
taquipneia valores iguais ou superiores a 60 incursões por minuto em menores de
dois meses, 50 incursões por minuto entre dois meses e um ano e 40 incursões por
minuto entre um e cinco anos.
A presença de sibilos é rara nas pneumonias bacterianas típicas, sendo mais
sugestiva de etiologia viral ou bronquiolite. A pneumonia típica pode, ainda,
manifestar-se com dor abdominal, constituindo importante diagnóstico diferencial
de abdome agudo na infância.
DIAGNÓSTICO
O diagnóstico da pneumonia na infância é essencialmente clínico, baseado na
presença de taquipneia associada a sinais e sintomas respiratórios. …'),
  ('exantematicas', (SELECT id FROM categorias WHERE nome = 'Pediatria'), 'Doenças Exantemáticas', 'B05/B06/B01/A38', 'DOENÇAS EXANTEMÁTICAS NA INFÂNCIA
INTRODUÇÃO
As doenças exantemáticas correspondem a um grupo de enfermidades infecciosas
caracterizadas pela presença de exantema cutâneo associado, em geral, a
manifestações sistêmicas como febre, mal-estar e sintomas respiratórios ou
gastrointestinais. Representam causa frequente de atendimento pediátrico
ambulatorial e hospitalar, especialmente em lactentes e pré-escolares.
O correto reconhecimento clínico das doenças exantemáticas é fundamental, uma
vez que algumas são autolimitadas e benignas, enquanto outras possuem
potencial de gravidade, risco de complicações sistêmicas, impacto epidemiológico
e necessidade de notificação compulsória e medidas de bloqueio.
PRINCIPAIS DOENÇAS EXANTEMÁTICAS
SARAMPO( CID-10:B05)
O sarampo é uma doença viral altamente contagiosa, potencialmente grave e
imunoprevenível, causada por um vírus RNA do gênero Morbillivirus, da família
Paramyxoviridae. A transmissão ocorre por aerossóis e secreções nasofaríngeas,
com elevado poder de disseminação em populações não imunizadas.
O quadro clínico inicia-se com pródromos intensos, incluindo febre alta, tosse seca
persistente, coriza, conjuntivite não purulenta, prostração e cefaleia. As manchas
de Koplik, caracterizadas por pequenas pápulas esbranquiçadas com halo
eritematoso na mucosa oral, são patognomônicas. O exantema é maculopapular,
inicia-se na região retroauricular e progride de forma cefalocaudal, podendo
confluir.
O diagnóstico é clínico, sendo os exames laboratoriais utilizados principalmente
para fins de vigilância epidemiológica. As principais complicações incluem otite
média aguda, pneumonia (principal causa de óbito), encefalite e panencefalite
esclerosante subaguda.
O tratamento é sintomático, com indicação de suplementação de vitamina A. O
sarampo é doença de notificação compulsória imediata.
EXANTEMA SÚBITO (ROSÉOLA INFANTIL)
CID-10: B08.2
O exantema súbito é uma virose comum em crianças entre seis meses e dois anos,
causada pelo herpesvírus humano tipo 6 ou 7. Caracteriza-se por início abrupto de
febre alta e contínua, por três a quatro dias, sem comprometimento importante do
estado geral.
Após o desaparecimento da febre, surge exantema maculopapular róseo, iniciando
no tronco e disseminando-se para membros, com curta duração e resolução
espontânea. O diagnóstico é clínico e o tratamento é apenas sintomático. Não é
doença de notificação compulsória.
ERITEMA INFECCIOSO (CID-10: B08.3)
O eritema infeccioso, também conhecido como quinta doença, é causado pelo
parvovírus B19. A manifestação clássica é o exantema em face, conferindo aspecto
de “face esbofeteada”, seguido por exantema rendilhado em tronco e membros.
A doença é geralmente benigna, porém pode cursar com complicações graves em
gestantes, imunodeprimidos e pacientes com anemias hemolíticas crônicas, como
crise aplástica transitória. O tratamento é sintomático, podendo ser necessária
transfusão sanguínea em casos selecionados. Não é doença de notificação
compulsória.
RUBÉOLA (CID-10: B06)
A rubéola é uma doença viral imunoprevenível, causada por um togavírus,
atualmente considerada eliminada no Brasil. Apresenta pródromos leves ou
ausentes, com febre baixa, linfadenomegalia cervical e exantema maculopapular
róseo de progressão cefalocaudal.
A principal relevância clínica da rubéola reside no risco da síndrome da rubéola
congênita, quando ocorre infecção durante a gestação, cursando com surdez,
catarata e cardiopatias. O tratamento é sintomático, e a doença é de notificação
compulsória.
VARICELA (CID-10: B01)
A varicela, causada pelo vírus varicela-zóster, é uma doença exantemática viral
caracterizada por exantema polimórfico, com lesões em diferentes estágios
evolutivos (máculas, pápulas, vesículas, pústulas e crostas), acometendo pele,
mucosas e couro cabeludo.
O tratamento é sintomático na maioria dos casos. O uso de aciclovir está indicado
em grupos específicos, como adolescentes, imunodeprimidos e pacientes com
doenças crônicas. A principal…'),
  ('febre_ped', (SELECT id FROM categorias WHERE nome = 'Pediatria'), 'Febre na Pediatria', 'R50', 'FEBRE NA PEDIATRIA
(CID-10:R50)
INTRODUÇÃO
A febre é uma das queixas mais frequentes na prática pediátrica, correspondendo
a parcela significativa dos atendimentos em unidades de emergência e atenção
primária à saúde. Trata-se de um sinal clínico que reflete resposta fisiológica do
organismo frente a estímulos infecciosos ou não infecciosos, sendo fundamental
compreender sua fisiopatologia, significado clínico e abordagem adequada
conforme a faixa etária da criança.
Embora, na maioria dos casos, a febre esteja associada a infecções virais benignas
e autolimitadas, uma parcela dos pacientes pediátricos, especialmente lactentes
jovens, pode apresentar infecções bacterianas graves potencialmente fatais.
Dessa forma, o manejo da febre na infância deve ser sistematizado, criterioso e
baseado em protocolos bem definidos.
CONCEITOS E FISIOPATOLOGIA
A febre é definida como elevação da temperatura corporal decorrente do aumento
do ponto de ajuste do centro termorregulador localizado no hipotálamo anterior.
Esse processo ocorre após a liberação de pirógenos endógenos, principalmente
citocinas inflamatórias, que estimulam a produção de prostaglandinas, elevando o
set point hipotalâmico.
Diferencia-se da hipertermia, na qual há aumento da temperatura corporal sem
alteração do set point, geralmente relacionada a falha na dissipação do calor, como
ocorre em ambientes muito quentes ou em uso de determinadas medicações.
Considera-se febre, de acordo com a Sociedade Brasileira de Pediatria,
temperatura axilar ≥ 37,5–37,8°C, temperatura oral ≥ 38°C e temperatura retal ≥ 38–
38,3°C.
FEBRE SEM SINAIS LOCALIZATÓRIOS (FSSL)
A febre sem sinais localizatórios é definida como febre com duração inferior a sete
dias, na qual, após anamnese detalhada e exame físico minucioso, não é possível
identificar foco infeccioso evidente. Essa condição é particularmente relevante em
crianças menores de 36 meses, grupo etário com maior risco de infecções
bacterianas graves.
A febre de origem indeterminada, por sua vez, caracteriza-se por febre persistente
por período igual ou superior a três semanas, sem diagnóstico estabelecido após
investigação adequada, devendo ser diferenciada da FSSL.
INFECÇÕES BACTERIANAS GRAVES ASSOCIADAS À FEBRE
As principais infecções bacterianas graves associadas à febre sem sinais
localizatórios na infância incluem infecção do trato urinário, bacteremia oculta e
pneumonia oculta. A exclusão dessas condições é o principal objetivo da
abordagem protocolar da criança febril.
ABORDAGEM CLÍNICA INICIAL
A avaliação inicial da criança com febre deve priorizar a identificação de sinais de
gravidade e comprometimento do estado geral. A presença de toxemia,
independentemente da idade, caracteriza situação de alto risco, exigindo
internação hospitalar, investigação completa e início imediato de antibioticoterapia
empírica.
A avaliação do estado geral deve ser realizada preferencialmente após controle da
febre, uma vez que a própria elevação da temperatura pode causar prostração
transitória.
CONDUTA CONFORME FAIXA ETÁRIA
Crianças toxemiadas (qualquer idade)
Crianças com comprometimento do estado geral devem ser internadas para
investigação e tratamento, independentemente da idade, com coleta de exames
laboratoriais amplos, exames de imagem e início de antibioticoterapia empírica.
Menores de 30 dias
Recém-nascidos febris apresentam risco elevado de infecção bacteriana grave e
devem ser abordados de forma agressiva. Está indicada internação hospitalar com
investigação laboratorial completa e início imediato de antibioticoterapia empírica,
mesmo na ausência de sinais localizatórios.
Crianças entre 1 e 3 meses
Nessa faixa etária, a conduta depende da estratificação de risco, utilizando-se
critérios clínicos e laboratoriais, como a Escala de Rochester. Crianças
classificadas como baixo risco podem ser acompanhadas com reavaliação diária
obrigatória. Crianças de alto risco devem ser internadas, submetidas à investigação
completa e tratadas com antibioticot…'),
  ('ivas_orl', (SELECT id FROM categorias WHERE nome = 'ORL/Audiologia'), 'Rinossinusites, Otites e Laringites', 'J01/H60/J04.0', 'INFECÇÕES DE VIAS AÉREAS SUPERIORES (IVAS)
FARINGITES E ABSCESSOS CERVICAIS
(CID-10:J02)
CONCEITO
As infecções de vias aéreas superiores constituem um grupo de doenças
infecciosas que acometem estruturas como cavidade nasal, faringe, laringe e
espaços cervicais profundos. As faringites representam uma das apresentações
mais frequentes desse grupo, podendo ter etiologia viral ou bacteriana, com
importância clínica significativa devido ao risco de complicações locais e
sistêmicas.
As faringites virais correspondem à maioria dos casos e incluem infecções por
adenovírus, vírus Epstein-Barr, herpes simples, enterovírus e HIV agudo. Já as
faringites bacterianas têm como principal agente o Streptococcus pyogenes, sendo
relevantes pela associação com complicações imunológicas, como febre
reumática e glomerulonefrite pós-estreptocócica.
A mononucleose infecciosa, causada pelo vírus Epstein-Barr, caracteriza-se por
febre, faringoamigdalite exsudativa, linfonodomegalia cervical posterior e
hepatoesplenomegalia. É diagnóstico diferencial fundamental das faringites
estreptocócicas, especialmente em adolescentes e adultos jovens.
Os abscessos cervicais profundos representam complicações graves das faringites
e incluem abscesso periamigdaliano, retrofaríngeo, parafaríngeo e a angina de
Ludwig. Esses quadros cursam com dor intensa, disfagia, trismo, voz abafada e
risco de obstrução de vias aéreas, configurando emergências clínicas.
TRATAMENTO
O tratamento das faringites virais é exclusivamente sintomático, baseado em
analgesia, antitérmicos, hidratação e repouso. Antibióticos não estão indicados.
Na mononucleose infecciosa, o manejo é de suporte, sendo contraindicado o uso
de antibióticos betalactâmicos devido ao risco de exantema.
As faringites bacterianas por estreptococo do grupo A requerem antibioticoterapia,
com o objetivo de reduzir complicações. Nos abscessos cervicais, o tratamento
envolve antibioticoterapia endovenosa de amplo espectro, drenagem cirúrgica
quando indicada e vigilância das vias aéreas.
EXAMES INDICADOS
•
Hemograma completo
•
Teste rápido para estreptococo
•
Cultura de orofaringe, quando indicada
•
Sorologia para vírus Epstein-Barr
•
Tomografia computadorizada de pescoço com contraste (suspeita de
abscesso)
RINOSSINUSITES, OTITES E LARINGITES
CID-10: RINOSSINUSITES (J01); OTITES (H60); LARINGITES (J04.0)
CONCEITO
As rinossinusites, otites e laringites constituem importantes causas de sintomas
respiratórios altos e são frequentemente observadas na prática ambulatorial. A
maioria dos casos possui etiologia viral e evolução autolimitada, porém infecções
bacterianas podem ocorrer, especialmente em quadros prolongados ou
complicados.
A rinossinusite caracteriza-se pela inflamação da mucosa nasal e dos seios
paranasais, manifestando-se por congestão nasal, rinorreia, dor facial, cefaleia e
hiposmia. A rinossinusite bacteriana deve ser suspeitada quando há persistência
dos sintomas por mais de dez dias, piora após melhora inicial ou presença de febre
alta associada a secreção purulenta.
A otite média aguda é mais comum na infância e cursa com otalgia, febre e
irritabilidade, podendo evoluir com perfuração timpânica. A laringite aguda,
geralmente viral, manifesta-se por rouquidão, tosse seca e disfonia, sendo
autolimitada na maioria dos casos.
TRATAMENTO
O tratamento das rinossinusites, otites e laringites virais é sintomático.
Analgésicos, antitérmicos, lavagem nasal com solução salina e hidratação
constituem a base do manejo. Antibióticos devem ser reservados para quadros
bacterianos bem caracterizados.
Na otite média bacteriana, a antibioticoterapia é indicada conforme idade,
gravidade e critérios clínicos. A laringite raramente necessita de antibióticos, sendo
o repouso vocal fundamental.
EXAMES INDICADOS
•
Otoscopia
•
Rinoscopia anterior
•
Tomografia dos seios da face (casos complicados ou recorrentes)
•
Audiometria, quando indicada
LINFADENITES E COMPLICAÇÕES DAS IVAS
(CID-10: L04.0 )
CONCEITO
As linfadenites cervicais as…'),
  ('otoneurologia', (SELECT id FROM categorias WHERE nome = 'ORL/Audiologia'), 'Otoneurologia – Vertigens e Labirintopatias', 'H83/H81/R42', 'OTONEUROLOGIA
CONCEITO
A otoneurologia é a área da medicina dedicada ao estudo das tonturas, vertigens,
distúrbios do equilíbrio corporal e alterações auditivas relacionadas ao sistema
vestibular periférico e central. As queixas otoneurológicas representam causa
frequente de atendimento ambulatorial e em serviços de urgência, exigindo
abordagem clínica criteriosa, uma vez que podem refletir desde condições
benignas e autolimitadas até doenças neurológicas potencialmente graves.
A vertigem é definida como uma sensação ilusória de movimento, geralmente
rotatório, do próprio corpo ou do ambiente, resultante de disfunção do sistema
vestibular. Deve ser diferenciada de outros tipos de tontura, como instabilidade
postural, sensação de cabeça vazia ou pré-síncope, que possuem fisiopatologia
distinta e não configuram vertigem verdadeira.
CLASSIFICAÇÃO DAS VERTIGENS (CID-10:R42)
Do ponto de vista etiológico, as vertigens são classificadas em periféricas e
centrais, conforme o local da disfunção no sistema vestibular.
As vertigens periféricas decorrem de alterações no labirinto ou no nervo vestibular.
Caracterizam-se, em geral, por início súbito, vertigem intensa, frequentemente
acompanhada de náuseas e vômitos, podendo associar-se a sintomas auditivos,
como zumbido e perda auditiva. O nistagmo costuma ser unidirecional, fatigável e
suprimido pela fixação do olhar.
As vertigens centrais resultam de lesões no tronco encefálico ou cerebelo. Tendem
a apresentar vertigem menos intensa, porém mais persistente, frequentemente
associada a sinais neurológicos, como diplopia, disartria, ataxia e déficit motor. O
nistagmo, nesses casos, é tipicamente multidirecional, não fatigável e não
suprimido pela fixação ocular.
VERTIGENS PERIFÉRICAS MAIS FREQUENTES
Vertigem Posicional Paroxística Benigna (VPPB)
A vertigem posicional paroxística benigna é a causa mais comum de vertigem
periférica e decorre do deslocamento de otólitos do utrículo para os canais
semicirculares, principalmente o canal posterior. Esses cristais passam a estimular
inadequadamente os receptores vestibulares durante determinados movimentos
da cabeça.
Clinicamente, a VPPB manifesta-se por episódios breves de vertigem intensa, com
duração de segundos, desencadeados por mudanças de posição cefálica, como
virar-se na cama, deitar, levantar-se ou olhar para cima. Náuseas podem estar
presentes, porém não há sintomas auditivos associados. O exame neurológico é
normal.
O diagnóstico é essencialmente clínico e confirmado pela manobra de DixHallpike, que desencadeia vertigem e nistagmo característico, com latência, curta
duração e fatigabilidade. O tratamento baseia-se em manobras de
reposicionamento otolítico, especialmente a manobra de Epley, que apresenta alta
taxa de resolução. Não há indicação de tratamento medicamentoso contínuo.
LABIRINTITE (CID-10: H83)
A labirintite corresponde à inflamação do labirinto, geralmente de origem
infecciosa, podendo ocorrer como complicação de otite média aguda.
Diferentemente da neuronite vestibular, cursa com comprometimento vestibular e
auditivo simultâneo.
O quadro clínico caracteriza-se por vertigem de início súbito, intensa e prolongada,
acompanhada de náuseas, vômitos, zumbido e perda auditiva. Podem estar
presentes sinais infecciosos, como febre, otalgia e otorreia. O tratamento envolve
medidas sintomáticas, controle da infecção de base e antibioticoterapia quando
indicada.
DOENÇA DE MÉNIÈRE (CID-10: H81.0)
A doença de Ménière é causada por hidropsia endolinfática, ou seja, acúmulo
excessivo de endolinfa no ouvido interno. Apresenta curso crônico e episódico, com
crises recorrentes.
Clinicamente, caracteriza-se pela tríade clássica de vertigem, hipoacusia
neurossensorial flutuante e zumbido, frequentemente associada à sensação de
plenitude auricular. As crises de vertigem duram minutos a horas e são
acompanhadas de sintomas autonômicos intensos. Com a progressão da doença,
a perda auditiva tende a tornar-se permanente.
O tratamento das crises é s…'),
  ('hanseniase', (SELECT id FROM categorias WHERE nome = 'Dermatologia'), 'Hanseníase', 'A30', 'HANSENÍASE
(CID-10: A30)
CONCEITO
A hanseníase é uma doença infeccocontagiosa crônica, de evolução lenta,
causada pelo Mycobacterium leprae, bacilo álcool-ácido resistente, intracelular
obrigatório, com predileção pelo sistema nervoso periférico e pela pele. Trata-se de
importante problema de saúde pública no Brasil, associada a condições
socioeconômicas desfavoráveis, aglomeração domiciliar e dificuldade de acesso
aos serviços de saúde.
A transmissão ocorre principalmente pela via aérea superior, por meio da inalação
de aerossóis eliminados por indivíduos bacilíferos não tratados. Apesar de sua
elevada infectividade, a hanseníase apresenta baixa patogenicidade, uma vez que
a maioria das pessoas expostas não desenvolve a doença, devido à resposta
imunológica eficaz. O período de incubação é prolongado, podendo variar de dois
a sete anos ou mais, o que contribui para o diagnóstico tardio.
FISIOPATOLOGIA
A hanseníase é uma doença espectral, determinada pela resposta imunológica do
hospedeiro. Nos indivíduos com resposta celular predominante (perfil Th1), ocorre
melhor controle da multiplicação bacilar, caracterizando as formas paucibacilares.
Já nos indivíduos com resposta humoral predominante (perfil Th2), há intensa
multiplicação do bacilo, configurando as formas multibacilares. Entre esses
extremos situam-se as formas dimorfas, marcadas por instabilidade imunológica e
maior risco de estados reacionais.
MANIFESTAÇÕES CLÍNICAS
A hanseníase manifesta-se principalmente por lesões cutâneas associadas à
alteração de sensibilidade. A perda sensitiva ocorre de forma progressiva e
ordenada, iniciando-se pela sensibilidade térmica, seguida da dolorosa e, por fim,
da tátil. As lesões cutâneas podem apresentar-se como máculas hipocrômicas,
placas eritematosas, infiltrações difusas, nódulos ou áreas anestésicas,
frequentemente acompanhadas de diminuição da sudorese e queda de pelos.
A hanseníase indeterminada é a forma inicial da doença e caracteriza-se por uma
ou poucas máculas hipocrômicas, mal delimitadas, com discreta alteração de
sensibilidade e ausência de espessamento neural evidente. Pode evoluir para cura
espontânea ou progressão para outras formas clínicas.
A forma tuberculoide apresenta poucas lesões bem delimitadas, assimétricas,
com perda sensitiva acentuada e espessamento neural precoce, geralmente
acometendo nervos periféricos de forma assimétrica.
A hanseníase virchowiana caracteriza-se por lesões múltiplas e simétricas,
infiltração difusa da pele, fácies leonina, madarose e comprometimento neural
tardio, geralmente sob a forma de polineuropatia. É a forma mais contagiosa da
doença.
As formas dimorfas apresentam lesões polimórficas, mal delimitadas,
frequentemente descritas como lesões em “queijo suíço”, associadas a grande
instabilidade clínica e maior risco de reações hansênicas.
ESTADOS REACIONAIS
Os estados reacionais são exacerbações inflamatórias agudas que podem ocorrer
antes, durante ou após o tratamento. A reação hansênica tipo 1, ou reação reversa,
decorre do aumento da imunidade celular e manifesta-se por inflamação das
lesões pré-existentes e neurite aguda, geralmente sem sintomas sistêmicos
importantes.
A reação hansênica tipo 2, conhecida como eritema nodoso hansênico, resulta da
formação de imunocomplexos e cursa com febre, mal-estar, artralgia e nódulos
dolorosos disseminados, podendo acometer múltiplos órgãos. O fenômeno de
Lúcio é uma forma rara e grave, associada à hanseníase virchowiana, caracterizada
por vasculite necrosante extensa.
DIAGNÓSTICO
O diagnóstico da hanseníase é essencialmente clínico e é confirmado quando está
presente pelo menos um dos seguintes critérios: lesão de pele com alteração de
sensibilidade, espessamento de nervo periférico com sinais sensitivos ou motores,
ou identificação do bacilo em exame laboratorial. A baciloscopia positiva confirma
o diagnóstico, porém sua negatividade não exclui a doença.
TRATAMENTO
O tratamento baseia-se na poliquimioterapia padronizada pelo Ministério…'),
  ('piodermites', (SELECT id FROM categorias WHERE nome = 'Dermatologia'), 'Piodermites (Impetigo, Erisipela, Celulite…)', 'L01/A46/L03', 'MISCELÂNEA – PIODERMITES(CID-10: L08.0)
CONCEITO
As piodermites correspondem a um grupo heterogêneo de infecções bacterianas
da pele e dos tecidos moles, causadas predominantemente por bactérias Grampositivas, especialmente Staphylococcus aureus e Streptococcus pyogenes. Essas
infecções podem acometer desde as camadas mais superficiais da pele até
estruturas profundas, como hipoderme, fáscia e musculatura, apresentando amplo
espectro de gravidade clínica. São extremamente prevalentes na prática clínica,
tanto na atenção primária quanto em serviços de urgência e internação hospitalar,
configurando importante problema de saúde pública.
ASPECTOS GERAIS E FISIOPATOLOGIA
A pele íntegra funciona como uma barreira natural contra agentes infecciosos.
Situações que levam à quebra dessa barreira — como traumas, escoriações,
dermatites, micoses interdigitais, picadas de insetos, procedimentos estéticos ou
cirúrgicos — facilitam a penetração bacteriana. Condições clínicas como diabetes
mellitus, obesidade, insuficiência venosa crônica, linfedema, alcoolismo,
imunossupressão e desnutrição aumentam significativamente o risco de
desenvolvimento e complicações das piodermites.
A resposta inflamatória local resulta da interação entre fatores de virulência
bacteriana (toxinas, enzimas proteolíticas) e a resposta imunológica do hospedeiro,
podendo evoluir desde quadros leves autolimitados até infecções graves com
repercussão sistêmica, sepse e falência orgânica.
INFECÇÕES BACTERIANAS SUPERFICIAIS
IMPETIGO
(CID-10: L01)
O impetigo é a piodermite mais superficial, restrita à epiderme, acometendo
principalmente crianças. Pode apresentar-se sob duas formas clínicas.
O impetigo não bolhoso (crostoso) é a forma mais comum, caracterizado por
pústulas superficiais que se rompem, formando crostas melicéricas amareladas,
geralmente localizadas em face e áreas expostas. É causado principalmente por
Staphylococcus aureus, podendo também envolver Streptococcus pyogenes.
O impetigo bolhoso ocorre quase exclusivamente por cepas toxigênicas de
Staphylococcus aureus e manifesta-se com bolhas flácidas cheias de conteúdo
claro ou purulento, mais frequente em neonatos e lactentes.
SÍNDROME DA PELE ESCALDADA ESTAFILOCÓCICA (CID-10: L00)
Trata-se de uma forma grave e disseminada de infecção estafilocócica mediada por
toxinas esfoliativas que clivam a desmogleína 1, levando à perda da adesão entre
os queratinócitos. Manifesta-se com eritema difuso, dor cutânea intensa, formação
de bolhas flácidas e sinal de Nikolsky positivo, sem acometimento de mucosas.
Acomete principalmente crianças menores de 6 anos.
ECTIMA (CID-10: L08.0)
O ectima representa uma forma mais profunda de impetigo, com extensão da
infecção até a derme. Clinicamente, observa-se úlcera recoberta por crosta
espessa e aderente, geralmente em membros inferiores, sendo comum em
populações vulneráveis. O principal agente é Streptococcus pyogenes.
INFECÇÕES BACTERIANAS PROFUNDAS
ERISIPELA
(CID-10: A46)
A erisipela é uma infecção aguda da derme superficial, com importante
comprometimento dos vasos linfáticos. Caracteriza-se por início abrupto, febre
alta, mal-estar e aparecimento de placa eritematosa, edemaciada, quente,
dolorosa e bem delimitada, geralmente em membros inferiores ou face. O principal
agente etiológico é o Streptococcus pyogenes.
CELULITE
(CID-10: L03)
A celulite acomete a derme profunda e a hipoderme. Apresenta quadro clínico
semelhante ao da erisipela, porém com bordas mal delimitadas, maior
profundidade e maior risco de complicações. Os agentes mais comuns são
Streptococcus pyogenes e Staphylococcus aureus.
FASCIÍTE NECROTIZANTE
(CID-10: M72.6)
É uma infecção grave, rapidamente progressiva, que acomete a fáscia e o tecido
subcutâneo, podendo ser monomicrobiana ou polimicrobiana. Caracteriza-se por
dor intensa desproporcional aos achados clínicos iniciais, rápida evolução para
necrose, bolhas hemorrágicas, sinais sistêmicos graves e alta mortalidade. O
tratamento exige intervenção cirúrgica …')
ON CONFLICT (chave) DO UPDATE SET
  categoria_id = EXCLUDED.categoria_id,
  titulo       = EXCLUDED.titulo,
  cid          = EXCLUDED.cid,
  texto        = EXCLUDED.texto;

-- Exames (apaga e reinsere para manter ordem)
DELETE FROM exames WHERE protocolo_id IN (SELECT id FROM protocolos);
INSERT INTO exames (protocolo_id, nome, atencao_basica, ordem) VALUES
  ((SELECT id FROM protocolos WHERE chave = 'pre_natal'), 'Hemograma completo', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'pre_natal'), 'Tipagem sanguínea e fator Rh', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'pre_natal'), 'EAS (urina tipo I)', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'pre_natal'), 'Urocultura', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'pre_natal'), 'Glicemia de jejum', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'pre_natal'), 'Teste rápido para sífilis', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'pre_natal'), 'VDRL', true, 7),
  ((SELECT id FROM protocolos WHERE chave = 'pre_natal'), 'HBsAg', true, 8),
  ((SELECT id FROM protocolos WHERE chave = 'pre_natal'), 'Sorologia HIV 1/2', true, 9),
  ((SELECT id FROM protocolos WHERE chave = 'pre_natal'), 'Toxoplasmose IgG e IgM', true, 10),
  ((SELECT id FROM protocolos WHERE chave = 'pre_natal'), 'Hepatite C (gestantes de risco)', true, 11),
  ((SELECT id FROM protocolos WHERE chave = 'pre_natal'), 'Citologia oncótica', true, 12),
  ((SELECT id FROM protocolos WHERE chave = 'pre_natal'), 'TSH', true, 13),
  ((SELECT id FROM protocolos WHERE chave = 'pre_natal'), 'Curva glicêmica 75g (TOTG)', true, 14),
  ((SELECT id FROM protocolos WHERE chave = 'pre_natal'), 'Eletroforese de hemoglobina', true, 15),
  ((SELECT id FROM protocolos WHERE chave = 'pre_natal'), 'Coombs indireto (Rh negativo)', true, 16),
  ((SELECT id FROM protocolos WHERE chave = 'pre_natal'), 'Cultura vaginal/retal – Streptococcus B', true, 17),
  ((SELECT id FROM protocolos WHERE chave = 'pre_natal'), 'Ultrassonografia obstétrica', true, 18),
  ((SELECT id FROM protocolos WHERE chave = 'dm_gestacao'), 'HbA1c', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'dm_gestacao'), 'ECG', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'dm_gestacao'), 'Creatinina + microalbuminúria', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'dm_gestacao'), 'Proteinúria de 24 horas', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'dm_gestacao'), 'Urocultura', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'dm_gestacao'), 'TSH e T4 livre', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'dm_gestacao'), 'USG morfológica', true, 7),
  ((SELECT id FROM protocolos WHERE chave = 'dm_gestacao'), 'Ecocardiograma materno', false, 8),
  ((SELECT id FROM protocolos WHERE chave = 'dm_gestacao'), 'Ecocardiografia fetal', false, 9),
  ((SELECT id FROM protocolos WHERE chave = 'dm_gestacao'), 'Exame de fundo de olho', false, 10),
  ((SELECT id FROM protocolos WHERE chave = 'hipertensao_gestacao'), 'Proteinúria de 24 horas', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'hipertensao_gestacao'), 'Relação proteína/creatinina', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'hipertensao_gestacao'), 'Urina tipo I', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'hipertensao_gestacao'), 'Hemograma completo', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'hipertensao_gestacao'), 'Creatinina sérica', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'hipertensao_gestacao'), 'Ureia', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'hipertensao_gestacao'), 'Ácido úrico', true, 7),
  ((SELECT id FROM protocolos WHERE chave = 'hipertensao_gestacao'), 'TGO e TGP', true, 8),
  ((SELECT id FROM protocolos WHERE chave = 'hipertensao_gestacao'), 'Bilirrubinas', true, 9),
  ((SELECT id FROM protocolos WHERE chave = 'hipertensao_gestacao'), 'Plaquetas', true, 10),
  ((SELECT id FROM protocolos WHERE chave = 'hipertensao_gestacao'), 'DHL', false, 11),
  ((SELECT id FROM protocolos WHERE chave = 'sifilis_gestacao'), 'Teste rápido para sífilis', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'sifilis_gestacao'), 'VDRL', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'sifilis_gestacao'), 'FTA-Abs (confirmação)', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'usg_obstetricia'), 'USG 1º trim. (11–13 sem)', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'usg_obstetricia'), 'USG 2º trim. (22–24 sem)', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'usg_obstetricia'), 'USG 3º trim. (34–36 sem)', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'usg_obstetricia'), 'Doppler obstétrico (alto risco)', false, 4),
  ((SELECT id FROM protocolos WHERE chave = 'usg_obstetricia'), 'Cardiotocografia (indicação clínica)', false, 5),
  ((SELECT id FROM protocolos WHERE chave = 'vulvovaginites'), 'Microscopia a fresco', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'vulvovaginites'), 'pH vaginal', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'vulvovaginites'), 'Teste de aminas (Whiff test)', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'vulvovaginites'), 'Escore de Nugent', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'ist'), 'PCR clamídia e gonorreia', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'ist'), 'Teste rápido sífilis', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'ist'), 'Teste rápido HIV', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'ist'), 'Sorologias hepatites B e C', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'ist'), 'Microscopia/Gram da secreção', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'ist'), 'Beta-hCG', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'ist'), 'USG pélvica (DIP)', true, 7),
  ((SELECT id FROM protocolos WHERE chave = 'cancer_colo'), 'Citologia oncótica (Papanicolaou)', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'cancer_colo'), 'Colposcopia', false, 2),
  ((SELECT id FROM protocolos WHERE chave = 'cancer_colo'), 'Biópsia cervical', false, 3),
  ((SELECT id FROM protocolos WHERE chave = 'doenca_mama'), 'Mamografia (rastreamento)', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'doenca_mama'), 'Ultrassonografia de mamas', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'doenca_mama'), 'Biópsia de mama', false, 3),
  ((SELECT id FROM protocolos WHERE chave = 'diabetes_mellitus'), 'Glicemia de jejum', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'diabetes_mellitus'), 'HbA1c', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'diabetes_mellitus'), 'TOTG 75g', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'diabetes_mellitus'), 'Creatinina + TFG', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'diabetes_mellitus'), 'Urina tipo I', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'diabetes_mellitus'), 'Microalbuminúria', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'diabetes_mellitus'), 'ECG', true, 7),
  ((SELECT id FROM protocolos WHERE chave = 'diabetes_mellitus'), 'Perfil lipídico', true, 8),
  ((SELECT id FROM protocolos WHERE chave = 'diabetes_mellitus'), 'Anti-GAD (DM1)', false, 9),
  ((SELECT id FROM protocolos WHERE chave = 'diabetes_mellitus'), 'Peptídeo C (DM1)', false, 10),
  ((SELECT id FROM protocolos WHERE chave = 'diabetes_mellitus'), 'Fundoscopia', false, 11),
  ((SELECT id FROM protocolos WHERE chave = 'obesidade'), 'Glicemia de jejum e HbA1c', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'obesidade'), 'Perfil lipídico', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'obesidade'), 'TSH', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'obesidade'), 'TGO e TGP', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'obesidade'), 'Creatinina + TFG', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'obesidade'), 'Urina tipo I', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'obesidade'), 'Microalbuminúria', true, 7),
  ((SELECT id FROM protocolos WHERE chave = 'obesidade'), 'Polissonografia (SAOS)', false, 8),
  ((SELECT id FROM protocolos WHERE chave = 'dislipidemia'), 'Perfil lipídico completo', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'dislipidemia'), 'Glicemia de jejum', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'dislipidemia'), 'HbA1c', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'dislipidemia'), 'TSH e T4 livre', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'dislipidemia'), 'Função renal', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'dislipidemia'), 'TGO e TGP', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'dislipidemia'), 'EAS', true, 7),
  ((SELECT id FROM protocolos WHERE chave = 'dislipidemia'), 'CPK (sintomas musculares)', true, 8),
  ((SELECT id FROM protocolos WHERE chave = 'dislipidemia'), 'Escore de cálcio coronariano', false, 9),
  ((SELECT id FROM protocolos WHERE chave = 'dislipidemia'), 'Testes genéticos', false, 10),
  ((SELECT id FROM protocolos WHERE chave = 'tireoide'), 'TSH', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'tireoide'), 'T4 livre', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'tireoide'), 'Anti-TPO', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'tireoide'), 'T3', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'tireoide'), 'VHS e PCR', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'tireoide'), 'USG da tireoide', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'tireoide'), 'TRAb', false, 7),
  ((SELECT id FROM protocolos WHERE chave = 'paratireoide'), 'Cálcio sérico', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'paratireoide'), 'Fósforo sérico', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'paratireoide'), 'Fosfatase alcalina', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'paratireoide'), 'Vitamina D (25-OH)', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'paratireoide'), 'Função renal', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'paratireoide'), 'PTH intacto', false, 6),
  ((SELECT id FROM protocolos WHERE chave = 'paratireoide'), 'Densitometria óssea', false, 7),
  ((SELECT id FROM protocolos WHERE chave = 'paratireoide'), 'Cintilografia', false, 8),
  ((SELECT id FROM protocolos WHERE chave = 'adrenais'), 'Cortisol urinário livre 24h', false, 1),
  ((SELECT id FROM protocolos WHERE chave = 'adrenais'), 'Cortisol salivar noturno', false, 2),
  ((SELECT id FROM protocolos WHERE chave = 'adrenais'), 'Teste supressão dexametasona', false, 3),
  ((SELECT id FROM protocolos WHERE chave = 'adrenais'), 'Aldosterona e renina', false, 4),
  ((SELECT id FROM protocolos WHERE chave = 'adrenais'), 'Relação aldosterona/renina', false, 5),
  ((SELECT id FROM protocolos WHERE chave = 'adrenais'), 'Metanefrinas', false, 6),
  ((SELECT id FROM protocolos WHERE chave = 'adrenais'), 'TC/RM abdome', false, 7),
  ((SELECT id FROM protocolos WHERE chave = 'psiquiatria_humor'), 'Hemograma completo', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'psiquiatria_humor'), 'TSH e T4 livre', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'psiquiatria_humor'), 'Vitamina B12', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'psiquiatria_humor'), 'Glicemia de jejum', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'psiquiatria_humor'), 'Função renal e hepática', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'psiquiatria_humor'), 'Eletrólitos séricos', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'ansiedade'), 'Hemograma completo', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'ansiedade'), 'TSH e T4 livre', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'ansiedade'), 'Vitamina B12', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'ansiedade'), 'Glicemia de jejum', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'ansiedade'), 'Eletrólitos séricos', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'ansiedade'), 'ECG', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'psicoticos'), 'Hemograma completo', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'psicoticos'), 'Função renal', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'psicoticos'), 'Função hepática', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'psicoticos'), 'Glicemia de jejum', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'psicoticos'), 'Perfil lipídico', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'psicoticos'), 'ECG', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'psicoticos'), 'Eletrólitos séricos', true, 7),
  ((SELECT id FROM protocolos WHERE chave = 'personalidade'), 'Hemograma completo', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'personalidade'), 'Função renal e hepática', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'personalidade'), 'Glicemia de jejum', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'personalidade'), 'TSH', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'personalidade'), 'Eletrólitos séricos', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'personalidade'), 'ECG', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'has'), 'Glicemia de jejum', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'has'), 'HbA1c', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'has'), 'Creatinina + TFG estimada', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'has'), 'Potássio sérico', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'has'), 'Ácido úrico', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'has'), 'EAS (urina tipo I)', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'has'), 'Perfil lipídico', true, 7),
  ((SELECT id FROM protocolos WHERE chave = 'has'), 'ECG de 12 derivações', true, 8),
  ((SELECT id FROM protocolos WHERE chave = 'has'), 'Microalbuminúria', true, 9),
  ((SELECT id FROM protocolos WHERE chave = 'has'), 'Ecocardiograma', false, 10),
  ((SELECT id FROM protocolos WHERE chave = 'has'), 'MAPA / MRPA', false, 11),
  ((SELECT id FROM protocolos WHERE chave = 'has_secundaria'), 'USG renal e vias urinárias', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'has_secundaria'), 'USG Doppler artérias renais', false, 2),
  ((SELECT id FROM protocolos WHERE chave = 'has_secundaria'), 'Angiotomografia/Angiorressonância renal', false, 3),
  ((SELECT id FROM protocolos WHERE chave = 'has_secundaria'), 'Aldosterona e renina', false, 4),
  ((SELECT id FROM protocolos WHERE chave = 'has_secundaria'), 'Metanefrinas', false, 5),
  ((SELECT id FROM protocolos WHERE chave = 'has_secundaria'), 'Cortisol + teste de supressão', false, 6),
  ((SELECT id FROM protocolos WHERE chave = 'has_secundaria'), 'Polissonografia', false, 7),
  ((SELECT id FROM protocolos WHERE chave = 'ic'), 'ECG', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'ic'), 'Radiografia de tórax', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'ic'), 'Perfil lipídico', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'ic'), 'Função renal seriada', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'ic'), 'Eletrólitos séricos', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'ic'), 'Hemograma', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'ic'), 'BNP ou NT-proBNP', false, 7),
  ((SELECT id FROM protocolos WHERE chave = 'ic'), 'Ecocardiograma', false, 8),
  ((SELECT id FROM protocolos WHERE chave = 'ic'), 'Cineangiocoronariografia', false, 9),
  ((SELECT id FROM protocolos WHERE chave = 'ic'), 'RM cardíaca', false, 10),
  ((SELECT id FROM protocolos WHERE chave = 'fibrilacao'), 'ECG de 12 derivações', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'fibrilacao'), 'Função renal', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'fibrilacao'), 'Função hepática', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'fibrilacao'), 'Eletrólitos', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'fibrilacao'), 'TSH', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'fibrilacao'), 'INR', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'fibrilacao'), 'Hemograma', true, 7),
  ((SELECT id FROM protocolos WHERE chave = 'fibrilacao'), 'Holter de 24 horas', false, 8),
  ((SELECT id FROM protocolos WHERE chave = 'fibrilacao'), 'Ecocardiograma transtorácico', false, 9),
  ((SELECT id FROM protocolos WHERE chave = 'fibrilacao'), 'Ecocardiograma transesofágico', false, 10),
  ((SELECT id FROM protocolos WHERE chave = 'litiase'), 'USG do trato urinário', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'litiase'), 'Urina tipo I', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'litiase'), 'Urocultura', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'litiase'), 'Hemograma', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'litiase'), 'Ureia e creatinina', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'litiase'), 'Eletrólitos séricos', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'litiase'), 'Cálcio sérico', true, 7),
  ((SELECT id FROM protocolos WHERE chave = 'litiase'), 'Ácido úrico', true, 8),
  ((SELECT id FROM protocolos WHERE chave = 'litiase'), 'TC sem contraste', false, 9),
  ((SELECT id FROM protocolos WHERE chave = 'itu'), 'Urina tipo I (EAS)', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'itu'), 'Urocultura', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'itu'), 'Hemograma completo', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'itu'), 'Ureia e creatinina', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'itu'), 'Hemocultura (sepse)', false, 5),
  ((SELECT id FROM protocolos WHERE chave = 'lra'), 'Creatinina seriada', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'lra'), 'Ureia', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'lra'), 'Eletrólitos', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'lra'), 'Urina tipo I', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'lra'), 'FENa', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'lra'), 'USG renal', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'lra'), 'Gasometria', false, 7),
  ((SELECT id FROM protocolos WHERE chave = 'drc'), 'Creatinina + TFG', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'drc'), 'Ureia', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'drc'), 'Urina tipo I', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'drc'), 'Albuminúria/proteinúria', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'drc'), 'Eletrólitos', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'drc'), 'Hemograma', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'drc'), 'Ferritina + sat. transferrina', true, 7),
  ((SELECT id FROM protocolos WHERE chave = 'drc'), 'Vitamina D', true, 8),
  ((SELECT id FROM protocolos WHERE chave = 'drc'), 'USG renal', true, 9),
  ((SELECT id FROM protocolos WHERE chave = 'drc'), 'ECG', true, 10),
  ((SELECT id FROM protocolos WHERE chave = 'drc'), 'Perfil lipídico', true, 11),
  ((SELECT id FROM protocolos WHERE chave = 'drc'), 'PTH intacto', false, 12),
  ((SELECT id FROM protocolos WHERE chave = 'fibromialgia'), 'Hemograma completo', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'fibromialgia'), 'TSH e T4 livre', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'fibromialgia'), 'Vitamina B12', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'fibromialgia'), 'Função renal e hepática', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'fibromialgia'), 'Eletrólitos', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'fibromialgia'), 'VHS e PCR', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'osteoporose'), 'Cálcio sérico', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'osteoporose'), 'Fósforo sérico', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'osteoporose'), 'Vitamina D (25-OH)', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'osteoporose'), 'Função renal', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'osteoporose'), 'Densitometria óssea (DXA)', false, 5),
  ((SELECT id FROM protocolos WHERE chave = 'osteoporose'), 'PTH', false, 6),
  ((SELECT id FROM protocolos WHERE chave = 'osteoartrite'), 'Radiografia simples', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'osteoartrite'), 'VHS e PCR', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'osteoartrite'), 'Ácido úrico', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'osteoartrite'), 'Fator reumatoide', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'osteoartrite'), 'USG articular', false, 5),
  ((SELECT id FROM protocolos WHERE chave = 'gota'), 'Ácido úrico sérico', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'gota'), 'Hemograma', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'gota'), 'Função renal', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'gota'), 'Urina tipo I', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'gota'), 'Radiografia simples', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'gota'), 'Artrocentese', false, 6),
  ((SELECT id FROM protocolos WHERE chave = 'gota'), 'USG articular', false, 7),
  ((SELECT id FROM protocolos WHERE chave = 'gota'), 'TC de dupla energia', false, 8),
  ((SELECT id FROM protocolos WHERE chave = 'les'), 'Hemograma completo', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'les'), 'PCR e VHS', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'les'), 'Função renal', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'les'), 'Urina tipo I + sedimento', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'les'), 'Proteinúria de 24h', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'les'), 'FAN', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'les'), 'Anti-DNA dupla hélice', false, 7),
  ((SELECT id FROM protocolos WHERE chave = 'les'), 'Anti-Sm/Ro/La', false, 8),
  ((SELECT id FROM protocolos WHERE chave = 'les'), 'Complemento C3 e C4', false, 9),
  ((SELECT id FROM protocolos WHERE chave = 'les'), 'Anticorpos antifosfolípides', false, 10),
  ((SELECT id FROM protocolos WHERE chave = 'les'), 'Biópsia renal', false, 11),
  ((SELECT id FROM protocolos WHERE chave = 'artrite'), 'Hemograma', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'artrite'), 'PCR e VHS', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'artrite'), 'Função renal e hepática', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'artrite'), 'Fator reumatoide', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'artrite'), 'Anti-CCP', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'artrite'), 'FAN', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'artrite'), 'Radiografia mãos/punhos', true, 7),
  ((SELECT id FROM protocolos WHERE chave = 'artrite'), 'USG articular', false, 8),
  ((SELECT id FROM protocolos WHERE chave = 'arboviroses'), 'Hemograma + hematócrito seriado', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'arboviroses'), 'TGO e TGP', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'arboviroses'), 'Albumina sérica', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'arboviroses'), 'Antígeno NS1 (teste rápido)', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'arboviroses'), 'Radiografia/USG', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'arboviroses'), 'RT-PCR (lab. referência)', false, 6),
  ((SELECT id FROM protocolos WHERE chave = 'arboviroses'), 'Sorologia IgM ELISA', false, 7),
  ((SELECT id FROM protocolos WHERE chave = 'parasitoses'), 'Exame parasitológico de fezes', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'parasitoses'), 'Hemograma (eosinofilia)', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'pneumonias'), 'Radiografia de tórax', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'pneumonias'), 'Hemograma', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'pneumonias'), 'PCR', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'pneumonias'), 'Hemocultura (graves)', false, 4),
  ((SELECT id FROM protocolos WHERE chave = 'pneumonias'), 'Antígeno urinário', false, 5),
  ((SELECT id FROM protocolos WHERE chave = 'tuberculose'), 'Baciloscopia do escarro', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'tuberculose'), 'TRM-TB', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'tuberculose'), 'Cultura para micobactéria', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'tuberculose'), 'Radiografia de tórax', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'tuberculose'), 'Hemograma', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'tuberculose'), 'Função hepática', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'tuberculose'), 'Função renal', true, 7),
  ((SELECT id FROM protocolos WHERE chave = 'tuberculose'), 'Sorologia HIV', true, 8),
  ((SELECT id FROM protocolos WHERE chave = 'tuberculose'), 'PPD / IGRA', true, 9),
  ((SELECT id FROM protocolos WHERE chave = 'tuberculose'), 'TC de tórax', false, 10),
  ((SELECT id FROM protocolos WHERE chave = 'hiv'), 'Teste rápido HIV', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'hiv'), 'Imunoensaio 3ª/4ª geração', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'hiv'), 'CD4+ (lab. ref.)', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'hiv'), 'Carga viral HIV (lab. ref.)', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'hiv'), 'Hemograma', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'hiv'), 'Função renal e hepática', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'hiv'), 'Glicemia + lipídios', true, 7),
  ((SELECT id FROM protocolos WHERE chave = 'hiv'), 'Sorologias Hep B/C + sífilis', true, 8),
  ((SELECT id FROM protocolos WHERE chave = 'hiv'), 'PPD / IGRA', true, 9),
  ((SELECT id FROM protocolos WHERE chave = 'hiv'), 'Genotipagem HIV', false, 10),
  ((SELECT id FROM protocolos WHERE chave = 'mordeduras'), 'Avaliação clínica da ferida', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'mordeduras'), 'Calendário vacinal', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'mordeduras'), 'Sorologia raiva', false, 3),
  ((SELECT id FROM protocolos WHERE chave = 'dpoc'), 'Radiografia de tórax', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'dpoc'), 'Oximetria de pulso', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'dpoc'), 'Hemograma', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'dpoc'), 'Espirometria pós-BD', false, 4),
  ((SELECT id FROM protocolos WHERE chave = 'dpoc'), 'TC de tórax', false, 5),
  ((SELECT id FROM protocolos WHERE chave = 'dpoc'), 'Gasometria arterial', false, 6),
  ((SELECT id FROM protocolos WHERE chave = 'asma'), 'Pico de fluxo expiratório seriado', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'asma'), 'Hemograma c/ eosinófilos', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'asma'), 'Radiografia de tórax', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'asma'), 'Oximetria de pulso', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'asma'), 'Espirometria c/ BD', false, 5),
  ((SELECT id FROM protocolos WHERE chave = 'asma'), 'Broncoprovocação', false, 6),
  ((SELECT id FROM protocolos WHERE chave = 'asma'), 'FeNO', false, 7),
  ((SELECT id FROM protocolos WHERE chave = 'asma'), 'IgE / RAST', false, 8),
  ((SELECT id FROM protocolos WHERE chave = 'asma'), 'Prick test', false, 9),
  ((SELECT id FROM protocolos WHERE chave = 'asma'), 'Gasometria', false, 10),
  ((SELECT id FROM protocolos WHERE chave = 'tep'), 'ECG', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'tep'), 'Oximetria de pulso', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'tep'), 'Radiografia de tórax', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'tep'), 'Dímero-D', false, 4),
  ((SELECT id FROM protocolos WHERE chave = 'tep'), 'Angiotomografia de tórax', false, 5),
  ((SELECT id FROM protocolos WHERE chave = 'tep'), 'Gasometria', false, 6),
  ((SELECT id FROM protocolos WHERE chave = 'tep'), 'Ecocardiograma', false, 7),
  ((SELECT id FROM protocolos WHERE chave = 'defic_vitaminicas'), 'Hemograma', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'defic_vitaminicas'), 'Vitamina D (25-OH)', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'defic_vitaminicas'), 'Vitamina B12', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'defic_vitaminicas'), 'Ferritina', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'defic_vitaminicas'), 'Cálcio sérico', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'anemias_inf'), 'Hemograma completo', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'anemias_inf'), 'Ferritina sérica', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'anemias_inf'), 'Saturação de transferrina', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'anemias_inf'), 'Eletroforese de hemoglobina', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'anemias_inf'), 'Reticulócitos', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'anemias_inf'), 'Parasitológico de fezes', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'bronquiolite'), 'Oximetria de pulso', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'bronquiolite'), 'Teste rápido VSR', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'bronquiolite'), 'Radiografia de tórax', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'ivas_inf'), 'Diagnóstico clínico', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'ivas_inf'), 'Hemograma + PCR', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'ivas_inf'), 'Cultura de orofaringe', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'ivas_inf'), 'Radiografia de tórax', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'tb_inf'), 'Radiografia de tórax', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'tb_inf'), 'PPD', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'tb_inf'), 'Baciloscopia / BAAR', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'tb_inf'), 'TRM-TB', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'itu_ped'), 'Urina tipo I', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'itu_ped'), 'Urocultura', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'itu_ped'), 'Hemograma + PCR', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'itu_ped'), 'USG renal', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'itu_ped'), 'Uretrocistografia (RVU)', false, 5),
  ((SELECT id FROM protocolos WHERE chave = 'has_ped'), 'Urina tipo I e urocultura', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'has_ped'), 'Função renal', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'has_ped'), 'Eletrólitos', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'has_ped'), 'Hemograma + PCR', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'has_ped'), 'Perfil lipídico', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'has_ped'), 'Glicemia', true, 6),
  ((SELECT id FROM protocolos WHERE chave = 'has_ped'), 'TSH', true, 7),
  ((SELECT id FROM protocolos WHERE chave = 'has_ped'), 'ECG', true, 8),
  ((SELECT id FROM protocolos WHERE chave = 'has_ped'), 'USG renal', true, 9),
  ((SELECT id FROM protocolos WHERE chave = 'has_ped'), 'Ecocardiograma', false, 10),
  ((SELECT id FROM protocolos WHERE chave = 'pneumonia_inf'), 'Radiografia de tórax', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'pneumonia_inf'), 'Hemograma', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'pneumonia_inf'), 'PCR e procalcitonina', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'pneumonia_inf'), 'Oximetria de pulso', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'pneumonia_inf'), 'Hemocultura (graves)', false, 5),
  ((SELECT id FROM protocolos WHERE chave = 'exantematicas'), 'Sorologia IgM (sarampo, rubéola)', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'exantematicas'), 'Cultura SBHGA (escarlatina)', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'exantematicas'), 'ASLO / anti-DNAse B', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'exantematicas'), 'Sorologia Parvovírus B19', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'exantematicas'), 'Oximetria de pulso', true, 5),
  ((SELECT id FROM protocolos WHERE chave = 'exantematicas'), 'PCR varicela', false, 6),
  ((SELECT id FROM protocolos WHERE chave = 'febre_ped'), 'Urina tipo I + urocultura', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'febre_ped'), 'Hemograma + PCR', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'febre_ped'), 'Radiografia de tórax', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'febre_ped'), 'Oximetria de pulso', true, 4),
  ((SELECT id FROM protocolos WHERE chave = 'febre_ped'), 'Hemocultura (< 3 meses)', false, 5),
  ((SELECT id FROM protocolos WHERE chave = 'ivas_orl'), 'Diagnóstico clínico/otoscópico', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'ivas_orl'), 'Radiografia seios da face', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'ivas_orl'), 'Cultura de orofaringe', true, 3),
  ((SELECT id FROM protocolos WHERE chave = 'ivas_orl'), 'TC seios paranasais', false, 4),
  ((SELECT id FROM protocolos WHERE chave = 'ivas_orl'), 'Audiometria', false, 5),
  ((SELECT id FROM protocolos WHERE chave = 'otoneurologia'), 'Glicemia de jejum', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'otoneurologia'), 'Hemograma + TSH', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'otoneurologia'), 'Audiometria tonal e vocal', false, 3),
  ((SELECT id FROM protocolos WHERE chave = 'otoneurologia'), 'VENG / VNG', false, 4),
  ((SELECT id FROM protocolos WHERE chave = 'otoneurologia'), 'RM de fossa posterior', false, 5),
  ((SELECT id FROM protocolos WHERE chave = 'hanseniase'), 'Baciloscopia raspado intradérmico', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'hanseniase'), 'Biópsia de pele c/ nervo', false, 2),
  ((SELECT id FROM protocolos WHERE chave = 'piodermites'), 'Hemograma + PCR', true, 1),
  ((SELECT id FROM protocolos WHERE chave = 'piodermites'), 'Cultura de secreção', true, 2),
  ((SELECT id FROM protocolos WHERE chave = 'piodermites'), 'Hemocultura (sistêmicas)', false, 3),
  ((SELECT id FROM protocolos WHERE chave = 'piodermites'), 'TC ou RM (fasciíte)', false, 4);
