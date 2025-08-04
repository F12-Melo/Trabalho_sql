-- Sum baseado no Toledo
select
	sum(salario) as "Somatório de Salários"
from
	funcionarios;

-- Sum Somatório de Orçamentos de Projetos em Andamento
select
	sum(orcamento) as "Somatório de Orçamentos de Projetos em Andamento"
from
	projetos
where
	concluido = false;
