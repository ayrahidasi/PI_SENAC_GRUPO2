-- COMANDOS DML --

-- INSERT
insert into usuario(nome, CPF, email, senha, tipo_usuario)
	values("Pedro", 45452022068,"pedrosp@live.com.br", "Senac@123","aluno"),
		  ("Marcia", 60052022074,"marciasp@gmail.com.br", "Senac@marcia","aluno"),
          ("João", 70450722400,"joao.edu@hotmail.com.br", "775522","professor"),
          ("Daiane", 48460022200,"daiane.fun@live.com.br", "fun@123","funcionario"),
          ("Olávio", 70052055068,"olavio.cl@yahoo.com.br", "cl@987","cliente");

insert into nota(idusuario_nota, id_trabalho, pontuacao)
	values(1,1,8.5),
		  (2,2,7.5),
          (3,3,5.0),
          (4,4,8.3);

-- UPDATE
update usuario set senha = "senac@777" where id_usuario = 1;
update usuario set email = "pedrosp@yahoo.com.br" where id_usuario = 1;
update nota set pontuacao = 7.0 where id_nota = 3;
update nota set pontuacao = 7.9 where id_nota = 1;
 
 -- DELETE
delete from usuario where id_usuario = 2;
delete from nota where id_nota = 4;

-- SELECT          
select * from usuario;
select * from nota;




-- COMANDOS DDL --
 
-- COMANDO DESC ou DESCRIBE
desc usuario;
describe nota;

-- SHOW
show tables;
show databases;


-- ALTER TABLE
alter table usuario add column idade int;
alter table usuario add column altura float, add column peso float;
alter table usuario drop column peso;
alter table usuario add column datanascimento date;
alter table usuario drop column altura;

-- USE
use bd_sistema_info;

-- DROP
drop table nota;
drop database bd_sistema_info;
