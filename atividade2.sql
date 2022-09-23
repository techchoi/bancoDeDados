CREATE DATABASE db_ecommerce;
USE db_ecommerce;
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
item VARCHAR(255),
valor FLOAT (2),
descricao VARCHAR(255),
quantidade INT,
PRIMARY KEY (id)
);
INSERT INTO tb_produtos (item,valor,descricao,quantidade)
VALUE ("Blusa",500.99,"Blusa tecido 100% poliester",30),
("Saia",600.60,"Saia tecido 100% algodão",20),
("Blusa",510.45,"Blusa tecido 80% algodão e 20% poliestes",50),
("Blusa",250.99,"Blusa tecido 100% Poliester",30),
("Saia",400.60,"100% couro",100),
("Calça",808.45,"Calçca jeans 80% poliestes e 20% elastano",50),
("Calça",1200.99,"Calça bandagem 100% elastano",60),
("Blusa",501.45,"Blusa cropped 100% elastano",60);
SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;
SET SQL_SAFE_UPDATES = 0;
UPDATE tb_produtos SET descricao = "Blusa tecido 80% poliestes e 20% algodão" WHERE id = 4;



