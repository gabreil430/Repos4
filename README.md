# Repos4
Repositorio q n funciona
desisto aaaaaaaaa


Data base
:V



create database TCC; 
use TCC; 

create table IDOSOS(
   ID int primary key AUTO_INCREMENT NOT NULL,
   TipoUsuário int not null,
   Nome varchar(200) not null,
   Idade int not null,
   Sexo boolean not null , -- 0 masculino e 1 feminino
   Descrição varchar (1000), -- informações deste usuário
   Localização varchar (200)
);

create table CUIDADORES(
   ID int primary key AUTO_INCREMENT NOT NULL,
   TipoUsuário int not null,
   Nome varchar(200) not null,
   Idade int not null,
   Sexo boolean not null, -- 0 masculino e 1 feminino
   Descrição varchar (1000), -- informações deste usuário
   Localização varchar (200)
);

create table CHAT(
   ID int primary key AUTO_INCREMENT NOT NULL,
   ID_Idoso int NOT NULL,
   ID_Cuidador int NOT NULL, 
   FOREIGN KEY (ID_Idoso) REFERENCES IDOSOS(ID),
   FOREIGN KEY (ID_Cuidador) REFERENCES CUIDADORES(ID)
 );

create table MENSAGEM(
  ID int primary key AUTO_INCREMENT NOT NULL,
  ID_Chat int NOT NULL,
  REMETENTE boolean not null, -- 1 para idoso 0 para cuidador
  MSG varchar (500) not null, -- armazenando as mensagens 
  DATAHORA datetime, -- data e hora das mensagens
  FOREIGN KEY (ID_Chat) REFERENCES CHAT(ID)
);

