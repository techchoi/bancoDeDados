CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;
CREATE TABLE tb_produtos(id BIGINT AUTO_INCREMENT,
categoria VARCHAR(255),

PRIMARY KEY(id)
);
CREATE TABLE tb_categoria(id BIGINT AUTO_INCREMENT,
valor FLOAT,
nome VARCHAR(255),
PRIMARY KEY(id),
FOREIGN KEY() REFERENCES tb_produtos(id)
);
