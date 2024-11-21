-- apagar o banco de dados
drop database dbLoterica;
-- criar o banco de dados
create database dbLoterica;
-- acessar o db
use dbLoterica;
-- criar as tabelas
create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
telefone char(10),
cpf char(14),
idade int,
salario decimal (9,2)
);

-- inserindo registros nas tabelas
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf, idade, salario)
values(1,'Jorge Silva do Santos', 'jorgesilva.c@gmail.com', '90000-0000', '123.456.789-10', '30', '1500');
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf, idade, salario)
values(2, 'Sandra Anjos Pereira', 'sandraanjinhos@gmail.com', '91234-5678', '222.333.444.05', '20', '3000');
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf, idade, salario)
values(3, 'Paula Souza Maria', 'paulasouza.m@gmail.com', '92345-6789', '111.112.113.14', '50', '2500');
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf)
values(4, 'Rafael Rodrigues', 'rafarodrigues@gmail.com', '98967-6789', '112.113.114.15');
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf)
values(5, 'Carlos Junior Jovem', 'carlosjr.jo@gmail.com', '96789-8967', '213.312.413.40');

-- visualizando as estruturas das tabelas
desc tbFuncionarios;
-- visualizando os registros das tabelas
select * from tbFuncionarios;
