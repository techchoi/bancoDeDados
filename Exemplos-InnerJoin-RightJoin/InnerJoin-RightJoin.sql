CREATE DATABASE  db_lojageneration;
USE db_lojageneration;
CREATE TABLE tb_categoria(id BIGINT(5) AUTO_INCREMENT,
descricao VARCHAR(255) NOT NULL, /*indica não pode deixar sem info*/
PRIMARY KEY(id)
);
CREATE TABLE tb_produtos(id BIGINT(5) AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
qtproduto INT NOT NULL,
categoria_id BIGINT(5),
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id) 
/*chave estrangeira deve puxar a referencia da chave primaria*/
);
INSERT INTO tb_categoria (descricao)
VALUE ("perifericos"),
("Software"),
("Adesivos");
SELECT * FROM tb_categoria;
INSERT INTO tb_produtos(nome,preco,qtproduto,categoria_id)
VALUES("Mouse",20.00,10,1),
("Teclado",35.00,10,10),
("Meninas super poderosas",35.000,10,3);
SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE nome = "Mouse";
SELECT * FROM tb_produtos INNER JOIN tb_categoria ON 
tb_produtos.categoria_id = tb_categoria.id;
SELECT * FROM tb_produtos RIGHT JOIN tb_categoria ON 
tb_produtos.categoria_ID = tb_categoria.id;