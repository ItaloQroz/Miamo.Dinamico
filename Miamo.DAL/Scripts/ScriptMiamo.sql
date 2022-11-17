CREATE DATABASE MiamoDesktopDB

Use MiamoDesktopDB

CREATE TABLE Fornecedores
  (
    id_fornecedor INT NOT NULL,
    Nome VARCHAR(50),
    CNPJ INT,
    email VARCHAR(50),
    telefone1 VARCHAR(20),
    telefone2 VARCHAR(20),
    id_enderecoFornecedor INT NOT NULL UNIQUE,
    Nome2 VARCHAR(50),
    Cep VARCHAR(9),
    Logradouro VARCHAR(100),
    Numero INT,
    Complemento VARCHAR(30),
    Bairro VARCHAR(50),
    Cidade VARCHAR(50),
    UF VARCHAR(2),
    id_cliente INT,
    PRIMARY KEY(id_fornecedor)
  )
 SELECT * FROM Fornecedores 

IF (NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'EstoqueTotal'))
BEGIN
  CREATE TABLE EstoqueTotal
  (
    id_estoque INT NOT NULL,
    quantidade INT,
    id_Produto INT NOT NULL,
    id_usuario INT NOT NULL,
    id_entrada INT NOT NULL,
    id_saida INT NOT NULL,
    PRIMARY KEY(id_estoque)
  )
  SELECT * FROM EstoqueTotal

END;


IF (NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Produto'))
BEGIN
  CREATE TABLE Produto
  (
    id_Produto INT NOT NULL,
    NomeProduto VARCHAR(50),
    DescricaoProduto VARCHAR(200),
    TamanhoProduto VARCHAR(4),
    CorProduto VARCHAR(20),
    PrecoProduto DECIMAL(10, 2),
    Total INT,
    id_Categoria INT NOT NULL,
    id_fornecedor INT NOT NULL,
    PRIMARY KEY(id_Produto)
  )
  SELECT * FROM Produto
END;

IF (NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Usuario'))
BEGIN
  CREATE TABLE Usuario
  (
    id_usuario INT NOT NULL,
    Nome VARCHAR(50),
    TipoUsuario INT,
    Senha VARCHAR(50),
    LoginUsuario VARCHAR(20),
    id_tpUsuario INT NOT NULL,
    PRIMARY KEY(id_usuario)
  )

  SELECT * FROM Usuario
END;
IF (NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'tpUsuario'))
BEGIN
  CREATE TABLE tpUsuario
  (
    id_usuario INT UNIQUE,
    id_tpUsuario INT NOT NULL UNIQUE,
    DescricaoTpUsuario VARCHAR(20),
    PRIMARY KEY(id_tpUsuario)
  )
  SELECT * FROM tpUsuario

END;

IF (NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Categoria'))
BEGIN
  CREATE TABLE Categoria
  (
    id_Categoria INT NOT NULL,
    NomeCategoria VARCHAR(50),
    PRIMARY KEY(id_Categoria)
  )
  SELECT * FROM Categoria

END;
IF (NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Cliente'))
BEGIN
  CREATE TABLE Cliente
  (
    id_cliente INT NOT NULL,
    Nome VARCHAR(50),
    CPF VARCHAR(14),
    Email VARCHAR(50),
    Telefone VARCHAR(16),
    Data_Nascimento DATE,
    PRIMARY KEY(id_cliente)
  )
  SELECT * FROM Cliente

END;
IF (NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'EnderecoCliente'))
BEGIN
  CREATE TABLE EnderecoCliente
  (
    id_enderecoCliente INT NOT NULL,
    Nome VARCHAR(50),
 
    Cep VARCHAR(9),
    Logradouro VARCHAR(100),
    Numero INT,
    Complemento VARCHAR(30),
    Bairro VARCHAR(50),
    Cidade VARCHAR(50),
    UF VARCHAR(2),
    Ponto_Referencia VARCHAR(100),
    id_cliente INT NOT NULL,
    PRIMARY KEY(id_enderecoCliente)
  )
  SELECT * FROM EnderecoCliente

END;
IF (NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Entrada'))
BEGIN
  CREATE TABLE Entrada
  (
    id_entrada INT NOT NULL,
    Quantidade INT,
    Data DATE,
    id_fornecedor INT NOT NULL,
    id_usuario INT,
    id_Produto INT NOT NULL,
    PRIMARY KEY(id_entrada)
  )
  SELECT * FROM Entrada
END;
IF (NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Saida'))
BEGIN
  CREATE TABLE Saida
  (
    id_saida INT NOT NULL,
    Quantidade INT,
    Data DATE,
    id_Produto INT NOT NULL,
    PRIMARY KEY(id_saida)
  )
  SELECT * FROM Saida

END;
-- Create FKs
ALTER TABLE tpUsuario
    ADD    FOREIGN KEY (id_usuario)
    REFERENCES Usuario(id_usuario)
;
ALTER TABLE EnderecoCliente
    ADD    FOREIGN KEY (id_cliente)
    REFERENCES Cliente(id_cliente)
;
ALTER TABLE Entrada
    ADD    FOREIGN KEY (id_Produto)
    REFERENCES Produto(id_Produto)
;
ALTER TABLE Saida
    ADD    FOREIGN KEY (id_saida)
    REFERENCES Produto(id_Produto)
;
ALTER TABLE Saida
    ADD    FOREIGN KEY (id_Produto)
    REFERENCES Produto(id_Produto)
;
ALTER TABLE EstoqueTotal
    ADD    FOREIGN KEY (id_Produto)
    REFERENCES Produto(id_Produto)
;
ALTER TABLE EstoqueTotal
    ADD    FOREIGN KEY (id_entrada)
    REFERENCES Entrada(id_entrada)
;
ALTER TABLE EstoqueTotal
    ADD    FOREIGN KEY (id_saida)
    REFERENCES saida(id_saida) 
;
ALTER TABLE Entrada
    ADD    FOREIGN KEY (id_fornecedor)
    REFERENCES Fornecedores(id_fornecedor)
;
ALTER TABLE Usuario
    ADD    FOREIGN KEY (id_tpUsuario)
    REFERENCES tpUsuario(id_tpUsuario) 
;
ALTER TABLE Produto
    ADD    FOREIGN KEY (id_Categoria)
    REFERENCES Categoria(id_Categoria)
;
ALTER TABLE Entrada
    ADD    FOREIGN KEY (id_usuario)
    REFERENCES Usuario(id_usuario)
;
ALTER TABLE Produto
    ADD    FOREIGN KEY (id_fornecedor)
    REFERENCES Fornecedores(id_fornecedor)
;

-- drop table Cliente

-- drop database MiamoDesktopDB