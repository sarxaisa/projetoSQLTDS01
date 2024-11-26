
drop database dbPortaria;

create database dbPortaria;

use dbPortaria;

create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
rg char(13) unique,
cpf char(14) not null unique,
sexo char(1) default 'F' check(sexo in('F','M')),
salario decimal(9,2) default 0 check(salario >=0),
primary key (codFunc));

create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(50) not null,
senha varchar(20) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc) references tbFuncionarios(codFunc));

create table tbClientes(
codCli int not null auto_increment,
nome varchar(50),
email varchar(50),
telCel char(11),
primary key(codCli));

create table tbFornecedores(
codForn int not null auto_increment,
nome varchar(100),
email varchar(100),
telefone char(10),
cnpj char(18) not null unique,
primary key(codForn));

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100) not null,
lote char(12),
validade date,
dataEntr date,
horaEntr time,
quantidade int,
preco decimal (9,2),
codForn int not null,
primary key(codProd), 
foreign key(codForn) references tbFornecedores(codForn));

create table tbVendas(
codVend int not null auto_increment,
valor decimal(9,2),
quantidade int,
dataVend date,
horaVend time,
codUsu int not null,
codProd int not null,
codCli int not null,
primary key(codVend),
foreign key(codUsu)  references tbUsuarios(codUsu),
foreign key(codProd) references tbProdutos(codProd),
foreign key(codCli)  references tbClientes(codCli));

desc tbFuncionarios;
desc tbUsuarios;
desc tbFornecedores;
desc tbClientes;
desc tbProdutos;
desc tbVendas;

insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
values('Isabelly Sara', '33.456.789-0', '123.456.789-10', 'F', 5000.00);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
values('Robert Jr','32.564.987-1', '321.564.987-11', 'M', 2500.50);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
values('Barbara Costa','42.465.798-2', '231.645.879-12', 'F', 3699.90);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
values('Carlos Roberto', '23.678.114-3','512.309.455-13', 'M', 1600.00);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
values('Rodrigo Faro', '55.500.220-7','896.405.145-09', 'M', 500.00);


insert into tbClientes(nome,email,telCel)
values('Joana Antunes', 'joana.antunes@gmail.com','95248-7859');
insert into tbClientes(nome,email,telCel)
values('Amaurir Jr','amaurir.jr@gmail.com','92387-3361');
insert into tbClientes(nome,email,telCel)
values('Suzi Abravanel','suzinha.abravanel@gmail.com','92387-3361');
insert into tbClientes(nome,email,telCel)
values('Linda Amelia','amelia.lindaa@gmail.com','99875-5622');
insert into tbClientes(nome,email,telCel)
values('Carlos Marques','carlinhos.marques@gmail.com','94565-0212');

insert into tbFornecedores(nome,email,telefone,cnpj)
values('Armarinho Fernandez', 'sac@afernandez.com.br', '94410-8635', '77.400.523/1114-80');
insert into tbFornecedores(nome,email,telefone,cnpj)
values('Mercado Amaro', 'mer@mercadaoamaro.com.br', '95499-2244', '66.500.645/2223-55');
insert into tbFornecedores(nome,email,telefone,cnpj)
values('Esquinao salgado', 'esq@esquinaosalg.com.br', '96245-8635', '36.760.321/3334-99');
insert into tbFornecedores(nome,email,telefone,cnpj)
values('Salao Neuza', 'neuza@salaoneuza.com.br', '92965-7489', '52.452.168/1213-20');
insert into tbFornecedores(nome,email,telefone,cnpj)
values('Distribuidora Souza', 'distri@souza.com.br', '92965-7489', '74.089.257/8541-13');


insert into tbUsuarios(nome,senha,codFunc)
values('isabelly.sara','1234', 1);
insert into tbUsuarios(nome,senha,codFunc)
values('robert.jr','1234', 2);
insert into tbUsuarios(nome,senha,codFunc)
values('barbara.costa','1234', 3);
insert into tbUsuarios(nome,senha,codFunc)
values('carlos.roberto','1234', 4);
insert into tbUsuarios(nome,senha,codFunc)
values('rodrigo.faro', '1234', 5);


insert into tbProdutos(descricao,lote,validade, dataEntr,horaEntr,quantidade,preco,codForn)
values('Kit Cabelo', '524515', '2030/11/19', '2024/11/19','11:46:00',10,15.00,4);
insert into tbProdutos(descricao,lote,validade, dataEntr,horaEntr,quantidade,preco,codForn)
values('Carvao', '612304', '2025/09/01', '2024/08/10','10:50:00', 55,20.50,5);
insert into tbProdutos(descricao,lote,validade, dataEntr,horaEntr,quantidade,preco,codForn)
values('Brinquedos', '002567', '2026/01/16', '2024/06/05','12:25:00', 60,19.99,1);
insert into tbProdutos(descricao,lote,validade, dataEntr,horaEntr,quantidade,preco,codForn)
values('Salgados congelados', '748100', '2024/12/20', '2024/02/19','15:00:00', 20,5.50,3);
insert into tbProdutos(descricao,lote,validade, dataEntr,horaEntr,quantidade,preco,codForn)
values('Danone', '230956', '2026/10/15', '2024/07/21','06:10:00', 82,16.50,2);

insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli)
values(1000.00, 410 ,'2024/07/20','12:30:00',1,2,1);
insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli)
values(1300.00, 640 ,'2024/01/18','08:10:00', 2,1,2);
insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli)
values(1570.50, 950 ,'2024/10/15','10:10:00', 3,4,3);
insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli)
values(300.40, 200 ,'2024/02/05','07:55:00', 4,5,4);
insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli)
values(790.37, 450 ,'2024/09/13','06:55:00', 5,3,5);

select * from tbClientes;
select * from tbFuncionarios;
select * from tbFornecedores;
select * from tbUsuarios;
select * from tbProdutos;
select * from tbVendas;

select func.nome as 'Nome do funcionario', usu.nome as 'Nome do usuario'  from tbUsuarios as usu
inner join tbFuncionarios as func
on usu.codFunc= func.codFunc where func.codfunc=2;

select func.nome as 'Nome do funcionario', usu.nome as 'Nome do usuario'  from tbUsuarios as usu
inner join tbFuncionarios as func
on usu.codFunc= func.codFunc where func.nome like '%o%';

select func.nome as'Funcionarios',cli.nome as 'Clientes',prod.descricao as 'Produtos',
vend.quantidade as 'Quantidade',vend.valor as 'Valor'
from tbVendas as vend inner join tbFuncionarios as func on func.codFunc = vend.codUsu 
inner join tbClientes as cli on vend.codCli= cli.codCli
inner join tbProdutos as prod on vend.codProd= prod.codProd;

-- nome do fornecedor, lote do produto,validade do produto, email do fornecedor,quantidade de produto, cnpj do fornecedor,preço do produto

select forn.nome as 'Fornecedores', prod.lote as 'Lote', prod.validade as 'Validade', forn.email as 'E-mail', 
prod.quantidade as 'Quantidade', forn.cnpj as 'CNPJ', prod.preco as 'Preco'
from tbProdutos as prod inner join tbFornecedores as forn on forn.codForn=prod.codProd;
