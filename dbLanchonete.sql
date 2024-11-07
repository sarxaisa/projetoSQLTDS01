-- apagar o banco de dados se existir
drop database dbLanchonete;
-- criar um banco de dados
create database dbLanchonete;
-- visualizar banco de dados
show databases;
-- acessar o banco de dados
use dbLanchonete;
-- visualizando as tabelas
show tables;
-- criando as tabelas para o banco de dados
create table tbUsuarios(
codUsu int,
nome varchar(30),
senha varchar(12)
);

create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
telefone char(10),
logradouro varchar(100),
numero char(10),
complemento varchar(50),
bairro varchar(100),
cep char(9),
cidade varchar(100),
estado char(2)
);
-- visualizar a ESTRUTURA da tabela
desc tbUsuarios;
desc tbFuncionarios;
