-- Criando banco de dados
CREATE DATABASE db_recHumanos;

-- Selecionando o banco de dados que vou trabalhar
USE db_recHumanos;

-- Criando tabelas com atríbutos de funcionários
CREATE TABLE tb_colaboradores(
id bigint auto_increment,
nome varchar (255),
idade int,
rg varchar(10),
cpf varchar (12),
endereco varchar(255),
primary key (id)
);

ALTER TABLE tb_colaboradores MODIFY rg varchar(15);

ALTER TABLE tb_colaboradores MODIFY cpf varchar(16);

--  Inserindo dados funcionários 
INSERT INTO tb_colaboradores (nome, idade, rg, cpf, endereco)
VALUES ("Jorge da Silva", 32, "123.456.78-4", "123.145.745-85", "Rua BlaBlá Nº 25"),
		("Maria Benedita", 57, "81.151.451-x", "471.125.015-85", "Rua Pipipopo Nº 148"),
        ("Carlos Roberto", 22, "145.785.125-1", "256.458.452-51", "Estrada assombrada Nº 45"),
        ("Ana Oliveira", 18, "547.856.854-15", "784.478.846-58", "Rua Sipo Nº 2"),
        ("Marcos Junior", 65, "174.785.145-85", "145.765.412-14", "Rua Salsi  Nº 47");

SELECT * FROM tb_colaboradores;

-- Inserindo Coluna de salario na tabela
ALTER TABLE tb_colaboradores ADD salario decimal (5,2);
ALTER TABLE tb_colaboradores MODIFY salario decimal (7,2);

-- Inserindo Salarios nos colaboradores
UPDATE tb_colaboradores SET salario = 2000.0 WHERE id = 1;
UPDATE tb_colaboradores SET salario = 800.80 WHERE id = 2;
UPDATE tb_colaboradores SET salario = 1500.0 WHERE id = 3;
UPDATE tb_colaboradores SET salario = 2200.18 WHERE id = 4;
UPDATE tb_colaboradores SET salario = 7500.65 WHERE id = 5;

-- Filtando os salários
SELECT * FROM tb_colaboradores WHERE salario > 2000; 

SELECT * FROM tb_colaboradores WHERE salario < 2000; 

-- Atualizando Endereço do id 5
UPDATE tb_colaboradores SET endereco = "Rua SalsiFufu  Nº 47" WHERE id = 5;

