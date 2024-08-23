CREATE TABLE Pais 
(
    idPais INT PRIMARY KEY AUTO_INCREMENT,
    nomePais VARCHAR(100) NOT NULL,
    siglaPais CHAR(3)
);

CREATE TABLE Estado 
(
    idEstado INT PRIMARY KEY AUTO_INCREMENT,
    nomeEstado VARCHAR(100) NOT NULL,
    siglaEstado CHAR(2) NOT NULL,
    idPais INT,
    UNIQUE (nomeEstado),
    FOREIGN KEY (idPais) REFERENCES Pais(idPais)
);

CREATE TABLE Cidade 
(
    idCidade INT PRIMARY KEY AUTO_INCREMENT,
    nomeCidade VARCHAR(100) NOT NULL,
    idEstado INT,
    FOREIGN KEY (idEstado) REFERENCES Estado(idEstado)
);

CREATE TABLE Bairro 
(
    idBairro INT PRIMARY KEY AUTO_INCREMENT,
    nomeBairro VARCHAR(100) NOT NULL,
    idCidade INT,
    FOREIGN KEY (idCidade) REFERENCES Cidade(idCidade)
);

CREATE TABLE Endereco 
(
    idEndereco INT PRIMARY KEY AUTO_INCREMENT,
    logradouro VARCHAR(100) NOT NULL,
    numero CHAR(10),
    CEP CHAR(8) NOT NULL,
    idBairro INT,
    FOREIGN KEY (idBairro) REFERENCES Bairro(idBairro)
);

CREATE TABLE Empresa 
(
    idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone CHAR(15) NOT NULL,
    idEndereco INT,
    cnpj CHAR(14) NOT NULL,
    FOREIGN KEY (idEndereco) REFERENCES Endereco(idEndereco)
);

CREATE TABLE Servicos 
(
    idServico INT PRIMARY KEY AUTO_INCREMENT,
    nomeServico VARCHAR(100) NOT NULL,
    descricaoServico VARCHAR(255),
    tempoServico TIME NOT NULL,
    statusServico TINYINT(1) NOT NULL,
    valor FLOAT,
    idEmpresa INT,
    FOREIGN KEY (idEmpresa) REFERENCES Empresa(idEmpresa)
);

CREATE TABLE usuario 
(
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL,
    celular CHAR(15),
    dataNasc DATE,
    status TINYINT(1) NOT NULL,
    idEmpresa INT,
    admin TINYINT(1) NOT NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL,
    UNIQUE (cpf),
    FOREIGN KEY (idEmpresa) REFERENCES Empresa(idEmpresa)
);

CREATE TABLE Agenda 
(
    idAgenda INT PRIMARY KEY AUTO_INCREMENT,
    dataAgenda DATE NOT NULL,
    horaInicialAgenda TIME NOT NULL,
    aceiteAgenda TINYINT(1) DEFAULT 0,
    horaFinal TIME NOT NULL,
    idServicos INT,
    idUsuario INT NOT NULL,
    FOREIGN KEY (idServicos) REFERENCES Servicos(idServico),
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
);

CREATE TABLE feriados 
(
    idFeriado INT PRIMARY KEY AUTO_INCREMENT,
    dataFeriado DATE NOT NULL,
    nomeFeriado VARCHAR(100) NOT NULL,
    ativo TINYINT(1) NOT NULL DEFAULT 0,
    idEmpresa INT,
    FOREIGN KEY (idEmpresa) REFERENCES Empresa(idEmpresa)
);

CREATE TABLE horasFolgas 
(
    idFolgas INT PRIMARY KEY AUTO_INCREMENT,
    dataHrsFolgas DATE NOT NULL,
    idEmpresa INT,
    horaIncio TIME NOT NULL,
    horaFim TIME NOT NULL,
    ativo TINYINT(1) NOT NULL,
    FOREIGN KEY (idEmpresa) REFERENCES Empresa(idEmpresa)
);

CREATE TABLE diasSemana 
(
    idDiaSemana INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    ativo TINYINT(1) NOT NULL DEFAULT 0,
    codigoDiaSemana INT NOT NULL,
    idEmpresa INT,
    UNIQUE (codigoDiaSemana),
    FOREIGN KEY (idEmpresa) REFERENCES Empresa(idEmpresa)
);

CREATE TABLE horaTrabalhoDiaSemana 
(
    idHorarios INT PRIMARY KEY AUTO_INCREMENT,
    horarioInicio TIME NOT NULL,
    ativo TINYINT(1) NOT NULL DEFAULT 0,
    horarioFim TIME,
    iddiasSemana INT,
    FOREIGN KEY (iddiasSemana) REFERENCES diasSemana(idDiaSemana)
);

CREATE TABLE Config 
(
    idConifg INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    ativo TINYINT(1) NOT NULL DEFAULT 0,
    idEmpresa INT,
    FOREIGN KEY (idEmpresa) REFERENCES Empresa(idEmpresa)
);
