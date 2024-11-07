-- apagar o db
drop database dbPreenchimento;
-- criando o db
create database dbPreenchimento;
-- acessar o db 
use dbPreenchimento;
-- criando as tabelas
create table tbSolicitante(
CodID int,
endereco_id bigint(20)
);
create table tbServico(
CodID bigint(20),
endereco_id bigint(20),
solicitante_id bigint(20)
);
create table tbBairro(
CodID int,
nome varchar(100),
cidade_id int
);
create table tbEndereco(
CodID bigint(20),
bairro_id int,
tipo_local varchar(15),
logradouro varchar(128),
numero int,
complemento varchar(255)
);
create table tbCidade(
CodID int,
estado_id int,
nome varchar(38)
);
create table tbEstado(
CodID int,
sigla char(2)
);
create table tbPonto(
CodID bigint(20),
endereco_id bigint(20)
);
-- visualizando a estrutura das tabelas
desc tbSolicitante;
desc tbServico;
desc tbBairro;
desc tbEndereco;
desc tbCidade;
desc tbEstado;
desc tbPonto;