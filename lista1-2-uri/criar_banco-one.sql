CREATE TABLE [dbo].[Categories](
[id] [int] NOT NULL,
[name] [varchar](250) NULL,
CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([id] ASC)
)
CREATE TABLE [dbo].[Products](
[id] [int] NOT NULL,
[name] [varchar](250) NULL,
[amount] [float] NULL,
[price] [nchar](10) NULL,
[id_categories] [int] NULL,
[id_providers] [int] NULL,
CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ( [id] ASC )
)
CREATE TABLE [dbo].[Providers](
[id] [int] NOT NULL,
[name] [varchar](250) NULL,
[street] [varchar](250) NULL,
[city] [varchar](250) NULL,
[state] [char](2) NULL,
CONSTRAINT [PK_Providers] PRIMARY KEY CLUSTERED ( [id] ASC )
)

Insert Into Categories values (1,'Superior')
Insert Into Categories values (2,'Super Luxury')
Insert Into Categories values (3,'Modern')
Insert Into Categories values (4,'Nerd')
Insert Into Categories values (5,'Infantile')
Insert Into Categories values (6,'Robust')
Insert Into Categories values (9,'Wood')
insert into Products values (1,'Blue Chair',30,300.00,9,5)
insert into Products values (2,'Red Chair',200,2150.00,2,1)
insert into Products values (3,'Disney Wardrobe',400,829.50,4,4)
insert into Products values (4,'Blue Toaster',20,9.90,3,3)
insert into Products values (5,'Solar Panel',30,3000.25,4,4)
insert into providers values(1,'Ajax SA','Rua Presidente Castelo Branco',
'Porto Alegre','RS')
insert into providers values(2,'Sansul SA','Av Brasil','Rio de Janeiro','RJ')
insert into providers values(3,'Pr Sheppard Chairs','Rua do Moinho',
'Santa Maria','RS')
insert into providers values(4,'Elon Electro','Rua Apolo','São Paulo','SP')
insert into providers values(5,'Mike Electro',
'Rua Pedro da Cunha','Curitiba','PR')