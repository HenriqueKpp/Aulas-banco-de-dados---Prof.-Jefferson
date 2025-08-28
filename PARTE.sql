CREATE DATABASE system_biblioteca;
USE system_biblioteca;

CREATE TABLE Pessoa(
CPF int NOT NULL PRIMARY KEY, 
Nome varchar(255) NOT NULL,
data_nasc date
);

CREATE TABLE Autor(
ID int NOT NULL PRIMARY KEY,
CPF_pessoa int NOT NULL,
CONSTRAINT FK_CPF_pessoa FOREIGN KEY (CPF_pessoa)
references Pessoa (CPF),
Nome_pessoa varchar(255) NOT NULL,
data_nasc_pessoa date
);
