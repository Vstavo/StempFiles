-- Integrantes do grupo 07
-- Gustavo Vieira Santana
-- Dennis Monteiro
-- Kauã Andrade
-- Guilherme Silva Domingues
-- Augusto
-- Iago Soares


CREATE DATABASE Stemp;
USE Stemp;


CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nomeUsuario VARCHAR(40),
    cpf CHAR(11) UNIQUE,
    email VARCHAR(60) UNIQUE,
    senha VARCHAR(100)
);

INSERT INTO usuario VALUES 
(DEFAULT, 'Mario Andrade', '21064148891', 'marioandrade@gmail.com', 'mariogamer@warzone123');

CREATE TABLE sensor (
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
    modelo VARCHAR(30),
    localInstalacao VARCHAR(50)
);

INSERT INTO sensor VALUES (default, 'TMP36', 'Porta 01 da Câmara');

CREATE TABLE medicao (
	idMedicao INT PRIMARY KEY AUTO_INCREMENT,
    temperatura DECIMAL(4,1),
    dataHora DATETIME DEFAULT CURRENT_TIMESTAMP,
    sensor INT
);

INSERT INTO medicao VALUES (default, 3.5, default, 1);

CREATE TABLE empresa (
	idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    nomeEmpresa VARCHAR(60),
    cnpj CHAR(14) UNIQUE,
    qtdCamaras INT
);

INSERT INTO empresa VALUES 
(DEFAULT, 'Matheus Atacado', '10102121424236', 3);

CREATE TABLE camara (
	idCamara INT PRIMARY KEY AUTO_INCREMENT,
    qtdPortas INT,
    tamanho DECIMAL(6,2),
    nomeResponsavel VARCHAR(60)
);

INSERT INTO camara VALUES 
(DEFAULT, 3, 50.00, 'Fernando Costa Ribeiro');

SELECT * FROM usuario;
SELECT * FROM sensor;
SELECT * FROM empresa;
SELECT * FROM camara;
SELECT * FROM medicao;