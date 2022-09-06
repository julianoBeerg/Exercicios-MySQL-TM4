CREATE DATABASE db_pizzaria_beerg;

USE db_pizzaria_beerg;

CREATE TABLE tb_categorias(
id bigint auto_increment,
tipo varchar(255) not null,
primary key(id)
);

INSERT INTO tb_categorias(tipo)
VALUES("Salgada"),
	  ("Tradicional"),
	  ("Doce"),
	  ("Vegana"),	
      ("Especial");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
id bigint auto_increment,
sabor varchar(255) not null,
preco decimal(8,2) not null,
tipo_id bigint,
primary key(id),
foreign key(tipo_id) references tb_categorias(id));

INSERT INTO tb_pizzas (sabor, preco, tipo_id)
VALUES("Calabresa", 29.99, 2),
	  ("Brigadeiro", 42.0, 3),
      ("Frando c/ catupiry", 39.99, 2),
      ("Espinafre", 35.80, 1),
      ("Brócolis", 32.99, 1),
      ("Mussarela", 29.99, 2),
      ("Doce de leite", 45, 3),
      ("Romeu e Julieta", 49.99, 3);
      
SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 35.0;

SELECT * FROM tb_pizzas WHERE preco < 35.0;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 35.0 and 50.0 ORDER BY preco;

SELECT * FROM tb_pizzas WHERE sabor LIKE"%m%";

SELECT sabor, preco, tb_categorias.tipo FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.tipo_id;

SELECT sabor, preco, tb_categorias.tipo FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.tipo_id WHERE tipo_id = 2;