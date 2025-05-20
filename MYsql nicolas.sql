 CREATE DATABASE banco;
 USE banco;
 
 CREATE TABLE usuario (
 id_usuario INT PRIMARY KEY AUTO_INCREMENT NOT NULL
 email VARCHAR(50) NOT NULL,
 senha VARCHAR(50) NOT NULL,
 nome VARCHAR(50) NOT NULL,
 data_de nascimento VARCHAR NOT NULL,
 createdAt DATETIME,
 updatedAt DATETIME
 );
 
 CREATE TABLE cliente (
 id_cliente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
 nome VARCHAR(50) NOT NULL,
 telefone VARCHAR(50) NOT NULL,
 id_endereco int
 );
 
 CREATE TABLE cliente_endereco (
 id_Cliente_endereco INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
 rua VARCHAR(20),
 cep VARCHAR(50),
 bairro VARCHAR(50),
 cidade VARCHAR(50)
 );
 
 CREATE TABLE estoque (
 id_estoque INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
 id_produto INT,
 quantidade int
 );
 
 CREATE TABLE venda (
 id_usuario INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
 id_usuario INT,
 id_produto INT,
 token VARCHAR(30),
 createdAt DATETIME,
 updatedAt DATETIME
 );
 
 CREATE TABLE produto (
 id_produto INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
 nome VARCHAR(100),
 codigo_de_barras VARCHAR(100),
 createdAt DATETIME,
 updatedAt DATETIME
 );
 
 ALTER TABLE Cliente ADD FOREIGN KEY (id_endereco)
 REFERENCES clientes_endereco(id_cliente_enderco);
 ALTER TABLE Estoque ADD FOREIGN KEY (id_produto)
 REFERENCES Produto(id_produto);
 ALTER TABLE venda ADD FOREIGN KEY (id_usuario)
 REFERENCES usuario(id_usuario);
 ALTER TABLE venda ADD FOREIGN KEY (id_produto)
 REFERENCES produto(id_produto);
 
 
 


