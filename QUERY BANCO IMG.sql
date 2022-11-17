CREATE DATABASE MiamoDB2;



USE MiamoDB2;



CREATE TABLE [dbo].[TpUsuario]
(
    [IdTpUsuario] INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
    [DescricaoTpUsuario] NVARCHAR(13) NOT NULL



);



INSERT INTO [TpUsuario] VALUES('Administrador');
INSERT INTO [TpUsuario] VALUES('Outros');
-----------------------------------------------------




-----------------------------------------------------



CREATE TABLE [dbo].Usuario
(
    IdUsuario INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
    NomeUsuario NVARCHAR(50) NOT NULL,
    SenhaUsuario NVARCHAR(6) NOT NULL,
    EmailUsuario NVARCHAR(50) NOT NULL,
    FKTpUsuario INT NOT NULL,
    
    FOREIGN KEY (FKTpUsuario) REFERENCES [TpUsuario](IdTpUsuario)
   
);



INSERT INTO Usuario VALUES('Italo','111111','italo@miamo.com',2);
INSERT INTO Usuario VALUES('Romilson','222222','romilson@miamo.com',1);
INSERT INTO Usuario VALUES('Claudio','333333','claudio@miamo.com',1);



SELECT * FROM Usuario;
-----------------------------------------------------



CREATE TABLE [dbo].Categoria
(
    [IdCategoria] INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
    [NomeCategoria] NVARCHAR(50) NOT NULL



);



INSERT INTO Categoria VALUES('Lançamentos');
INSERT INTO Categoria VALUES('Modeladores');
INSERT INTO Categoria VALUES('Camisolas');
INSERT INTO Categoria VALUES('Calcinhas e & Fios');
INSERT INTO Categoria VALUES('Lingeries');
INSERT INTO Categoria VALUES('Sutiãs');



SELECT * FROM Categoria



CREATE TABLE [dbo].Produto
(
    [IdProduto] INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
    [NomeProduto] NVARCHAR(50) NOT NULL,
    [TamanhoProduto] NVARCHAR(5) NOT NULL,
    [PreçoProduto] DECIMAL(5,2) NOT NULL,
    [CorProduto] NVARCHAR (25) NOT NULL,
    [UrlImagemProduto] NVARCHAR (MAX) NOT NULL,
    [FKCategoriaProduto] INT NOT NULL,



   FOREIGN KEY (FKCategoriaProduto) REFERENCES Categoria(IdCategoria)
);



INSERT INTO Produto VALUES('Camisola','M','20,00','Azul','C:\Images\camisola.jpg',1);
INSERT INTO Produto VALUES('Modelador','M','20,00','Rosa','C:\Images\modelador.jpg',2);



CREATE TABLE [dbo].ImgCarrousel
(
    [ImgCarrousel] INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
    [NomeIMG] NVARCHAR(50) NOT NULL,
    [ExtensaoImg] NVARCHAR(50) NOT NULL


);

INSERT INTO ImgCarrousel VALUES('Destaque','jpg');
