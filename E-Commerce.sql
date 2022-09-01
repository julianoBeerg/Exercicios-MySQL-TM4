-- Criando banco de dados
CREATE DATABASE db_ecommerce;

-- Selecionando o banco de dados que vou trabalhar
USE db_ecommerce;

-- Criando tabelas com atríbutos de funcionários
CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar (255),
categoria varchar(127),
valor decimal(5,2),
descricao varchar(255),
primary key (id)
);

ALTER TABLE tb_produtos MODIFY valor decimal (7,2);

INSERT INTO tb_produtos (nome, categoria, valor, descricao)
VALUES ("Camiseta Florida", "Parte de cima", 850.99, "Camisa Florida Praiana"),
	   ("Camisa Social", "Parte de cima", 999.99, "Camisa Social Branca"),
	   ("Jaqueta de couro", "Parte de Cima", 1299.00, "Jaqueta de couro Sintetico Preta"),
	   ("Blusa Moletom básica", "Parte de cima", 499.99, "Moletom cinza com estampa de doguinho"),
	   ("Calça jeans Azul", "Parte de baixo", 659.60, "Calça Slim na cor Azul"),
	   ("Bermuda Preta", "Parte de baixo", 299, "Bermuda Preta Linho"),
	   ("Meia", "Parte de baixo", 99.99, "kit Meias coloridas"),
	   ("Tenis", "Parte de baixo", 1999.99, "Tenis chavoso");

-- Filtando os produtos
SELECT * FROM tb_produtos; 

SELECT * FROM tb_produtos WHERE valor > 500; 

SELECT * FROM tb_produtos WHERE valor < 500; 

-- Atualizando Endereço do id 5
UPDATE tb_produtos SET descricao = "Tênis chavoso com 12 molas" WHERE id = 16;