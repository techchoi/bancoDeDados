CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;
CREATE TABLE tb_classe(id BIGINT AUTO_INCREMENT,
raca VARCHAR (255),
PRIMARY KEY (id)
);
CREATE TABLE tb_personagens(id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
sexo VARCHAR(255) NOT NULL,
ataque INT NOT NULL,
defesa INT NOT NULL,
classe_id BIGINT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);
INSERT INTO tb_classe(raca)
VALUE ("Mago"), ("Assassino"), ("Cavaleiro"), ("Mercenário"), 
("Curandeiro");
SELECT * FROM tb_classe;
INSERT INTO tb_personagens(nome,sexo,ataque,defesa,classe_id)
VALUES ("Alice","Feminino",2500,1056,2),
("Goku","Masculino",500,250,3),
("SujiroKifuja","Masculino",3500,1500,4),
("Sakura","Feminino",1560,900,1),
("Crazy","Feminino",1900,1980,5);
SELECT * FROM tb_personagens;
SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "C%";
SELECT * FROM tb_personagens INNER JOIN tb_classe ON
tb_personagens.classe_id = tb_classe.id;
SELECT * FROM tb_personagens INNER JOIN tb_classe ON
tb_personagens.classe_id = tb_classe.id WHERE  raca = "Assassino";


