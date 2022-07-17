CREATE TABLE tb_turmas(
id_turma int AUTO_INCREMENT,
numero_turma int,
PRIMARY KEY  (id_turma)
);
CREATE TABLE tb_cursos(
id_curso int AUTO_INCREMENT,
id_turma int,
tipo varchar(40),
descricao varchar(40),
PRIMARY KEY (id_curso),
FOREIGN KEY tb_cursos(id_turma) REFERENCES tb_turmas(id_turma)
);


CREATE TABLE tb_alunos(
id_aluno int AUTO_INCREMENT, 
id_turma int,
nome varchar(50),
PRIMARY KEY (id_aluno),
FOREIGN KEY tb_alunos(id_turma) REFERENCES tb_turmas(id_turma)
);
CREATE TABLE tb_facilitadores(
id_facilitador int AUTO_INCREMENT,
id_curso int,
nome varchar(50),
PRIMARY KEY (id_facilitador), 
FOREIGN KEY tb_facilitadores(id_curso) REFERENCES tb_cursos(id_curso)
);
CREATE TABLE tb_entregas(
id_entrega int AUTO_iNCREMENT,
id_aluno int,
id_turma int,
modulo_entrega int,
link_entrega varchar(50),
etapa varchar(40),
PRIMARY KEY (id_entrega),
FOREIGN KEY tb_entregas(id_aluno) REFERENCES tb_alunos(id_aluno),
FOREIGN KEY (id_turma) REFERENCES tb_turmas(id_turma)
);
DROP TABLE tb_entregas
