
-- Igual ao select top soque no postgres (seleciona os top 7 da funcionarios)
SELECT * FROM projetos
LIMIT 3;

-- Pega os ultimos 5 funcionarios por data de criação

SELECT * FROM funcionario
ORDER BY data_contratacao DESC
LIMIT 5;

