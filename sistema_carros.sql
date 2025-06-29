CREATE DATABASE sistema_aluguel_carros;
USE sistema_aluguel_carros;


CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    email VARCHAR(100),
    telefone VARCHAR(20),
    endereco VARCHAR(255)
);


CREATE TABLE Carros (
    id_carro INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    ano INT,
    placa VARCHAR(10) NOT NULL UNIQUE,
    cor VARCHAR(30),
    status ENUM('disponível', 'alugado', 'manutenção') DEFAULT 'disponível',
    valor_diaria DECIMAL(10,2)
);


CREATE TABLE Alugueis (
    id_aluguel INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_carro INT NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim_prevista DATE NOT NULL,
    data_fim_real DATE,
    valor_total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_carro) REFERENCES Carros(id_carro)
);


CREATE TABLE Pagamentos (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    id_aluguel INT NOT NULL,
    data_pagamento DATE,
    valor_pago DECIMAL(10,2),
    metodo_pagamento ENUM('cartão', 'dinheiro', 'pix', 'boleto'),
    FOREIGN KEY (id_aluguel) REFERENCES Alugueis(id_aluguel)
);


CREATE TABLE Manutencoes (
    id_manutencao INT PRIMARY KEY AUTO_INCREMENT,
    id_carro INT NOT NULL,
    descricao TEXT,
    data_manutencao DATE,
    custo DECIMAL(10,2),
    FOREIGN KEY (id_carro) REFERENCES Carros(id_carro)
);