CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255),
rg INT,
nota FLOAT(2),
serie INT,
sala INT,
PRIMARY KEY (id)
);
INSERT INTO tb_alunos (nome,rg,nota,serie,sala)
VALUE("Nina Choi",777778781,9.5,5,501),
("Rodrigo Neri",444212497,10,5,501),
("Maria Mariana",555555555,8.2,8,801),
("Simone Simaria",111111111,6.7,3,301),
("Lady Gaga",333333333,4,1.2,102),
("Lilica Kim",666666666,2,6.4,603),
("Tedy Lee",451265498,1,4.2,402),
("George Silva",362145987,1.5,4,402);
SELECT * FROM tb_alunos WHERE nota > 7.0;
SELECT * FROM tb_alunos WHERE nota < 7.0;
SET SQL_SAFE_UPDATES = 0;
UPDATE tb_alunos SET nota = 10 WHERE id = 8;