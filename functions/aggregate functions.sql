SELECT
    cargo,
    COUNT(*) AS total_funcionarios,
    MIN(salario) AS menor_salario,
    MAX(salario) AS maior_salario,
    SUM(salario) AS soma_salarios,
    AVG(salario) AS media_salarial
FROM funcionarios
WHERE ativo = true
GROUP BY cargo
ORDER BY media_salarial DESC;
