-- apagando o db
drop database dbLivraria;
--criando o db
create database dbLivraria;
-- acessando o db
use dbLivraria;
--criando tabela
create table tbAluno(
raAluno int,
nome varchar(45),
email varchar(45),
telefone varchar (45)
);
create table tbLivro(
ISBN int,
nome varchar(45),
autor varchar(45),
paginas varchar(45),
aluno_raAluno int,
colaborador_id int
);
create table tbColaborador(
id_colaborador int,
cpf varchar(45),
nome varchar(45),
email varchar(45),
cargo varchar(45)
);
create table tbEmprestimo(
idEmprestimo int,
data emprestimo date,
data devolução date,
livro lsbn varchar(45),
colaboradorCPF varchar(45),
colaborador_id colaborador int
);