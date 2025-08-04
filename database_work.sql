CREATE DATABASE empresa;

CREATE TABLE departamentos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    criado_em TIMESTAMP
);

CREATE TABLE funcionarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    salario NUMERIC(10, 2),
    ativo BOOLEAN DEFAULT TRUE,
    data_contratacao DATE,
    habilidades TEXT[],
    cargo VARCHAR(50)
);

CREATE TABLE projetos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    departamento_id INT,
    responsavel_id INT,
    orcamento NUMERIC(12, 2),
    concluido BOOLEAN DEFAULT FALSE
);

FOREIGN KEY (departamento_id) REFERENCES departamentos(id),
FOREIGN KEY (responsavel_id) REFERENCES funcionarios(id)
