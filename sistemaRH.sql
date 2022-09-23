CREATE DATABASE db_servico_rh;
USE db_servico_rh;
CREATE TABLE tb_funcionarios(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(1000),
idade INT,
funcao CHAR(255),
salario CHAR(255),
genero CHAR(255),
 PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios (nome,idade,funcao,salario,genero)
VALUE ("Isabella",20,"DEVA",5000,"Mulher");
INSERT INTO tb_funcionarios (nome,idade,funcao,salario,genero)
VALUE ("Nayara",30,"DEVA",3000,"Mulher");
INSERT INTO tb_funcionarios (nome,idade,funcao,salario,genero)
VALUE ("Nina",28,"DEVA",1500,"Mulher");
INSERT INTO tb_funcionarios (nome,idade,funcao,salario,genero)
VALUE ("Amanda",29,"DEVA",2000,"Mulher");
INSERT INTO tb_funcionarios (nome,idade,funcao,salario,genero)
VALUE ("Julia",35,"DEVA",8000,"Mulher");

SELECT * FROM tb_funcionarios WHERE salario < 2000;
SELECT * FROM tb_funcionarios WHERE salario > 2000;
SET SQL_SAFE_UPDATES = 0;
UPDATE tb_funcionarios SET nome = "Fernanda" WHERE id = 2;
