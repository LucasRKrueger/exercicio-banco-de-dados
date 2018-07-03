CREATE TABLE clientes(
	id INT IDENTITY(1,1),
	nome VARCHAR (100) NOT NULL,
	sexo CHAR (1) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE celulares(
	id INT IDENTITY(1,1)NOT NULL,
	id_cliente INT NOT NULL,
	valor DECIMAL NOT NULL,
	ativo BIT DEFAULT(1),
	PRIMARY KEY (id),
	FOREIGN KEY (id_clientes) REFERENCES clietes(id)

);

CREATE TABLE emails(
	id INT IDENTITY(1,1) NOT NULL,
	id_cliente INT NOT NULL,
	valor DECIMAL NOT NULL,
	ativo BIT,
	PRIMARY KEY (id),
	FOREIGN KEY (id_clientes) REFERENCES clientes(id)
);

CREATE TABLE contasParaPagar(
	id INT IDENTITY(1,1),
	id_cliente INT NOT NULL,
	valor INT NOT NULL,
	data_vencimento DATE NOT NULL,
	valor_pago DECIMAL,
	status TEXT DEFAULT ('Pagar'),
	logico BIT DEFAULT (1)
	PRIMARY KEY (id)
	FOREIGN KEY (id_clientes) REFERENCES clientes(id)
);

CREATE TABLE contasParaReceber(
	id INT IDENTITY(1,1) NOT NULL,
	id_cliente INT NOT NULL,
	valor_a_receber DECIMAL,
	data_para_pagamento DATE,
	valor_recebido DECIMAL,
	data_recebimento DATE,
	statuss TEXTO DEFAULT ('receber'),
	ativo BIT DEFAULT(1),
	PRIMARY KEY(id),
	FOREIGN KEY(id_cliente) REFERENCES clientes(id)

);