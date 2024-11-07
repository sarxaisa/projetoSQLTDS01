-- apagando o db 
drop database dbEscola;
-- criando o db
create database dbEscola;
--acessando o db
use dbEscola;
-- criando as tabelas
create table tbCursoAluno(
CodIdCurso int,
Aluno_idAluno int
);
create table tbCurso(
CodIdCurso int,
nome varchar(45),
Professor_idProfessor int
);
create table tbAluno(
CodIdAluno int,
nome varchar(45),
email varchar(45),
cpf int,
endereco varchar(45),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45)
);
create table tbProfessor(
CodIdProf int,
nome varchar(45),
email varchar(45),
cpf int,
endereco varchar(45),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45)
);
-- visualizando as estruturas da tabela
desc tbCursoAluno;
desc tbCurso;
desc tbAluno;
desc tbProfessor;
