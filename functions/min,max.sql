
SELECT
    cargo,
    MIN(salario) AS menor_salario,
    MAX(salario) AS maior_salario
FROM funcionarios
GROUP BY cargo

SELECT
    cargo,
    MIN(salario) AS menor_salario,
    MAX(salario) AS maior_salario
FROM funcionarios
WHERE ativo = true
