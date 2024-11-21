create database wiliam_pratica2;

use wiliam_pratica2;

create table cliente (
ID_cliente int not null primary key,
nome_cliente varchar (20),
Email_cliente varchar (50),
telefone_cliente varchar (11)
);

create table funcionario (
ID_funcionario int not null primary key,
nome_funcionario varchar (20),
Email_funcionario varchar (50),
telefone_funcionario varchar (11)
);

create table chamado (
ID_solicitacao int not null primary key,
ID_cliente int,
ID_funcionario int,
Descrição varchar(500),
Urgência enum ('baixa','media','alta')not null,
Statu enum ('pendente',' em andamento','finalizada'),
Data_abertura date,
foreign key (ID_cliente) references cliente(ID_cliente),
foreign key (ID_funcionario) references funcionario(ID_funcionario)
);

