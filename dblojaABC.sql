-- apagar o banco de dados
drop database dblojaABC;
-- criar banco de dados
create database dblojaABC;
-- acessar o banco de dados
use dblojaABC;
-- criar as tabelas
create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
cpf char(14),
endereco varchar(100),
cep char(9),
numero char(10),
bairro varchar(100),
cidade varchar(100),
estado char(2),
telefone char(10),
dataNasc date,
salario decimal(9,2)
);

--visualizando as tabelas
show tables;
-- visualizando a estrutura das tabelas
desc tbFuncionarios;
-- inserir registros no banco de dados
insert into tbFuncionarios(codFunc,nome,email,cpf,endereco,cep,numero,bairro,cidade,estado,telefone,dataNasc, salario) 
values(1,'Isabelly Sara','isasarar.c@gmail.com','000.000.000-00', 'Rua Sauber',' 09272-360','17', 'Jardim Alzira Franco', 
'Santo André', 'Sp', '96154-0822', '2006/06/20', '1500.00');