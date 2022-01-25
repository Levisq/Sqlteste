 -- Cria o banco de dados
CREATE DATABASE TesteSeguranca
 -- Usa o banco de dados
USE TesteSeguranca
 -- Cria tabela
CREATE TABLE Usuarios
 (
    -- Adicionando atributos e criando um ID
	UsuarioId INT PRIMARY KEY IDENTITY,
	-- VARCHAR e para limitar a quantidade de caracteres, NOT NULL para não aceitar valores nulos
	Email VARCHAR(100) UNIQUE NOT NULL,
	Senha VARCHAR(50) NOT NULL
 )
	-- Adicionando os valores na tabeça usuarios
 INSERT INTO Usuarios VALUES ('email1@email.com', 45231)
	-- o "*" representa tudo
 SELECT * FROM Usuarios
	-- aqui foi definido o que mostrar e como hashbytes usamos para transformar uma informação em hash MD5 e o tipo de hash e AS serve para mostrar a informaçãode uma forma diferente
 SELECT UsuarioId, Email, HASHBYTES('MD2', Senha) AS 'Senha Hash' FROM Usuarios WHERE UsuarioId = 1
 SELECT UsuarioId, Email, HASHBYTES('MD2', Senha) AS 'Senha Hash' FROM Usuarios WHERE UsuarioId = 2
 SELECT UsuarioId, Email, HASHBYTES('MD4', Senha) AS 'Senha Hash' FROM Usuarios WHERE UsuarioId = 1
 SELECT UsuarioId, Email, HASHBYTES('MD5', Senha) AS 'Senha Hash' FROM Usuarios WHERE UsuarioId = 1
 SELECT UsuarioId, Email, HASHBYTES('SHA1', Senha) AS 'Senha Hash' FROM Usuarios WHERE UsuarioId = 1
 SELECT UsuarioId, Email, HASHBYTES('SHA2_256', Senha) AS 'Senha Hash' FROM Usuarios WHERE UsuarioId = 1
 SELECT UsuarioId, Email, HASHBYTES('SHA2_512', Senha) AS 'Senha Hash' FROM Usuarios WHERE UsuarioId = 1