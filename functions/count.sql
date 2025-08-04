--Count Quantidade de Funcionários(Toledo)
select
	COUNT(nome) as "Quantidade de Funcionarios"
from
	funcionarios;

-- Count Salários Diferentes
select
	COUNT(salario) as "Quantidade de Salários"
from
	funcionarios
where
	salario >= 4000;
