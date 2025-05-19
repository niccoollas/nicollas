CREATE DATABASE banco;
USE banco;

CREATE TABLE usuario (
id_usuario INT PRIMARY KEY AUTO_INCREMENT NOT NULL 
email VARCHAR(50) NOT NULL,
senha VARCHAR(50) NOT NULL,
nome VARCHAR(50) NOT NULL,
data_nascimento VARCHAR NOT NULL,
createdAt DATETIME,
updatedAt DATETIME
);

CREATE TABLE Cliente (
id_Cliente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR(50) NOT NULL,
telefone VARCHAR(50) NOT NULL,
id_endereco int
);

 CREATE TABLE Clientes_endereço (
 id_Cliente_endereco INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
 rua VARCHAR(20),
 cep VARCHAR(20),
 bairro VARCHAR(20),
 cidade VARCHAR(20)
);

CREATE TABLE estoque (
id_estoque INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
id_produto INT,
quantidade INT
);

  
  
 


