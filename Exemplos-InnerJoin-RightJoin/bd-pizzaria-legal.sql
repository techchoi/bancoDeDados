CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;
CREATE TABLE tb_categorias (id BIGINT AUTO_INCREMENT,
sabor VARCHAR(255),
tamanho VARCHAR(255),
PRIMARY KEY(id)
);
CREATE TABLE tb_pizzas (id BIGINT AUTO_INCREMENT,
preco FLOAT,
sabor VARCHAR (255),
tamanho INT,
categorias_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);
INSERT INTO tb_categorias(sabor,tamanho)
VALUE ("")

