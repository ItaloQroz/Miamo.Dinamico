CREATE TABLE [dbo].ImgCarrousel
(
    [IdImgCarrousel] INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
    [NomeIMG] NVARCHAR(50) NOT NULL,
    [NomeDescricaoIMG] NVARCHAR(50) NOT NULL,

);

use MiamoDB2

INSERT INTO ImgCarrousel VALUES('Imagem1','C:\Images\camisola.jpg');
