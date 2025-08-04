
SELECT
    cargo,
    AVG(salario) AS media_salarial
FROM funcionarios
GROUP BY cargo

SELECT
    AVG(salario) AS media_salarial
FROM funcionarios
WHERE ativo = true;
