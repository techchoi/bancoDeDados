CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;
CREATE TABLE tb_categorias (id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255),
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
INSERT INTO tb_categorias(tipo,tamanho)
VALUE ("Doce","Pequena"),("Doce","Grande"),
("Salgada","Pequena"),("Salgada","Grande");
INSERT INTO tb_pizzas(preco,sabor,categorias_id)
VALUE (55.90,"Margarita",4),(65.50,"Baiana",4),
(45.50,"Napolitana",4),(50.55,"Chocolate",2),
(40.30,"Romeu e Julieta",2),(25.00,"Romeu e Julieta",1),
(30.00,"Chocolate",2),(60.00,"Frango com catupiry",4);
SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "M%";
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON 
tb_pizzas.categorias_id = tb_categorias.id;
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON 
tb_pizzas.categorias_id = tb_categorias.id WHERE tipo = "Doce"



