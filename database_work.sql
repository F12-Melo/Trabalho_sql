create database empresa;

create table departamentos (
    id serial primary key,
    nome varchar(100) not null,
    descricao text,
    criado_em timestamp
);

create table funcionarios (
    id serial primary key,
    nome varchar(100) not null,
    idade int,
    salario numeric(10,2),
    ativo boolean default true,
    data_contratacao date,
    habilidades text[],
    cargo varchar(50)
);

create table projetos (
    id serial primary key,
    nome varchar(100) not null,
    departamento_id int,
    responsavel_id int,
    orcamento numeric(12,2),
    concluido boolean default false
);

alter table projetos
    add constraint fk_departamento
    foreign key (departamento_id)
    references departamentos(id)
    on delete cascade;

alter table projetos
    add constraint fk_responsavel
    foreign key (responsavel_id)
    references funcionarios(id)
    on delete set null;

insert into departamentos (nome, descricao, criado_em)
values
('tecnologia', 'responsável por sistemas e infraestrutura', '2023-01-10 09:30:00'),
('recursos humanos', 'gestão de pessoas e contratações', '2023-02-15 14:45:00'),
('financeiro', 'controle de orçamentos e pagamentos', '2023-03-20 11:20:00'),
('marketing', 'divulgação e campanhas publicitárias', '2023-04-05 16:10:00'),
('operações', 'controle de processos e produção', '2023-05-12 08:50:00');

insert into funcionarios (nome, idade, salario, ativo, data_contratacao, habilidades, cargo)
values
('ana silva', 29, 4500.00, true, '2022-03-01', array['python','sql'], 'analista de sistemas'),
('lucas mendes', 32, 5200.00, true, '2021-06-10', array['java','docker'], 'analista de sistemas'),
('bruno costa', 35, 6000.00, true, '2020-07-15', array['liderança','comunicação'], 'gerente de projetos'),
('fernanda alves', 40, 7500.00, true, '2017-11-03', array['gestão ágil','scrum'], 'gerente de projetos'),
('carla souza', 41, 7200.00, true, '2018-01-20', array['excel','financeiro'], 'analista financeiro'),
('rodrigo pires', 28, 5800.00, true, '2023-02-01', array['contabilidade','power bi'], 'analista financeiro'),
('daniel rocha', 26, 3500.00, true, '2023-05-10', array['redes sociais','seo'], 'assistente de marketing'),
('juliana freitas', 24, 3200.00, true, '2024-01-15', array['design','copywriting'], 'assistente de marketing'),
('eduardo lima', 38, 8000.00, true, '2019-09-01', array['logística','planejamento'], 'coordenador de operações'),
('marcos oliveira', 45, 8800.00, true, '2015-04-20', array['gestão de processos','lean'], 'coordenador de operações');

insert into projetos (nome, departamento_id, responsavel_id, orcamento, concluido)
values
('sistema de vendas online', 1, 1, 50000.00, false),
('campanha de divulgação 2025', 4, 4, 15000.00, false),
('reestruturação financeira', 3, 3, 25000.00, true),
('treinamento de novos funcionários', 2, 2, 8000.00, false),
('otimização da linha de produção', 5, 5, 40000.00, false);

--Toeldos






