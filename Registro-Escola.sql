-- Criando banco de dados
CREATE DATABASE db_escola;

-- Selecionando o banco de dados que vou trabalhar
USE db_escola;

-- Criando tabelas com atríbutos de funcionários
CREATE TABLE tb_alunos(
id bigint auto_increment,
nome varchar (255),
idade int,
materia varchar(127),
nota decimal(3,2),
primary key (id)
);

ALTER TABLE tb_alunos MODIFY nota decimal (7, 2);

INSERT INTO tb_alunos (nome, idade, materia, nota)
VALUES ("Juliano Nunes", 23, "Matematica", 5.4),
	   ("Walter White", 58, "Quimica", 10.0),
	   ("Albert Einsten", 38, "Portugues", 7.2),
	   ("Carlinhos", 5, "Matematica", 9.0),
	   ("Aninha", 9, "Quimica", 7.5),
	   ("Carla", 29, "Portugues", 9.5),
	   ("Manoel", 54, "Matematica", 4.0),
	   ("Maria", 25, "Portugues", 5.8);
	 
     
-- Filtando os produtos
SELECT * FROM tb_alunos; 

SELECT * FROM tb_alunos WHERE nota >= 7.0; 

SELECT * FROM tb_alunos WHERE nota < 7.0;

-- Atualizando Endereço do id 5
UPDATE tb_alunos SET nota = 7.2 WHERE id = 17;