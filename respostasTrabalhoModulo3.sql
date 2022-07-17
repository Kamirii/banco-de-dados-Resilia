SELECT * FROM tb_turmas;
SELECT * FROM tb_alunos;
SELECT * FROM tb_entregas;

#i.saber quem são os alunos que entregaram o projeto do módulo 1 e estão com o conceito em pronto ou mais que pronto
SELECT * FROM tb_entregas WHERE (etapa = "mais que pronto" OR etapa = "pronto") AND modulo_entrega = 1;

#ii.consultar quantos alunos temos em cada turma
SELECT COUNT(id_aluno) AS alunos_por_turma FROM tb_alunos GROUP BY id_turma;

#iii.quantos projetos no total foram entregues com conceito "Ainda não está pronto e "chegando lá"
SELECT COUNT(id_aluno) AS projetos_insatisfatorios FROM tb_entregas GROUP BY etapa HAVING etapa = "Ainda nao esta pronto" OR etapa = 'chegando la';
SELECT * FROM tb_entregas WHERE etapa = "Ainda nao esta pronto" OR etapa = "chegando la";

#iv.Qual a turma com a maior quantidade de projetos no "Mais que pronto"
SELECT id_turma, COUNT(etapa) AS turmas_maior_maisQuePronto from tb_entregas
WHERE etapa = "mais que pronto"
GROUP BY id_turma ORDER BY turmas_maior_maisQuePronto DESC LIMIT 1;

