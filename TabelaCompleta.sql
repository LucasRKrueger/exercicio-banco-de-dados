 DROP TABLE contasParaReceber;
 DROP TABLE contasParaPagar;
 DROP TABLE emails;
 DROP TABLE celulares;
 DROP TABLE clientes;
 CREATE TABLE clientes(
	id INT IDENTITY(1,1),
	nome VARCHAR (100) NOT NULL,
	sexo CHAR (1) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE celulares(
	id INT IDENTITY(1,1)NOT NULL,
	id_clientes INT NOT NULL,
	valor TEXT NOT NULL,
	ativo BIT DEFAULT(1),
	PRIMARY KEY (id),
	FOREIGN KEY (id_clientes) REFERENCES clientes(id)

);

CREATE TABLE emails(
	id INT IDENTITY(1,1) NOT NULL,
	id_clientes INT NOT NULL,
	valor TEXT NOT NULL,
	ativo BIT,
	PRIMARY KEY (id),
	FOREIGN KEY (id_clientes) REFERENCES clientes(id)
);

CREATE TABLE contasParaPagar(
	id INT IDENTITY(1,1),
	id_clientes INT NOT NULL,
	valor INT NOT NULL,
	data_vencimento DATE NOT NULL,
	valor_pago DECIMAL(6,2),
	status TEXT DEFAULT ('Pagar'),
	logico BIT DEFAULT (1)
	PRIMARY KEY (id)
	FOREIGN KEY (id_clientes) REFERENCES clientes(id)
);

CREATE TABLE contasParaReceber(
	id INT IDENTITY(1,1) NOT NULL,
	id_clientes INT NOT NULL,
	valor_a_receber DECIMAL(6,2),
	data_para_pagamento DATE,
	valor_recebido DECIMAL(6,2),
	data_recebimento DATE,
	statuss TEXT DEFAULT ('receber'),
	ativo BIT DEFAULT(1),
	PRIMARY KEY(id),
	FOREIGN KEY(id_clientes) REFERENCES clientes(id)
	);

	INSERT INTO clientes(nome, sexo) VALUES
	('Germana', 'F'),
	('Salvador', 'M'),
	('Úrsula', 'F'),
	('Aluísio', 'M');

	INSERT INTO emails(id_clientes, valor) VALUES
	((SELECT id FROM clientes WHERE id = 2), 'bernardodiegoalves.77@vienetfone.com.br');

	INSERT INTO emails(id_clientes, valor) VALUES
	((SELECT id FROM clientes WHERE id = 1), 'a68341ef3@emailna.life');

	INSERT INTO emails(id_clientes, valor) VALUES
	((SELECT id FROM clientes WHERE id = 3), 'zpgkmkem@boximail.com');

	INSERT INTO emails(id_clientes, valor) VALUES
	((SELECT id FROM clientes WHERE id = 1), 'ger@bol.com');

	INSERT INTO emails(id_clientes, valor) VALUES
	((SELECT id FROM clientes WHERE id = 2), 'gabrieldiegofernandodarocha_@uoul.com');

	INSERT INTO emails(id_clientes, valor) VALUES
	((SELECT id FROM clientes WHERE id = 3), 'iancauearaujo_@10clic.com.br');

	INSERT INTO emails(id_clientes, valor) VALUES
	((SELECT id FROM clientes WHERE id = 1), 'germana@gmail.com');

	INSERT INTO emails(id_clientes, valor) VALUES
	((SELECT id FROM clientes WHERE id = 2), 'salvador@hotmail.com');

	INSERT INTO contasParaReceber(id_clientes, data_para_pagamento, valor_a_receber) VALUES
	((SELECT id FROM clientes WHERE nome = 'Germana'), '2018-06-15', 500.00);

		INSERT INTO contasParaReceber(id_clientes, data_para_pagamento, valor_a_receber) VALUES
	((SELECT id FROM clientes WHERE nome = 'Salvador'), '2018-06-29', 320.50);

		INSERT INTO contasParaReceber(id_clientes, data_para_pagamento, valor_a_receber) VALUES
	((SELECT id FROM clientes WHERE nome = 'Úrsula'), '2018-06-07', 450.00);

		INSERT INTO contasParaReceber(id_clientes, data_para_pagamento, valor_a_receber) VALUES
	((SELECT id FROM clientes WHERE nome = 'Aluísio'), '2018-08-27', 1300.00);

		INSERT INTO contasParaReceber(id_clientes, data_para_pagamento, valor_a_receber) VALUES
	((SELECT id FROM clientes WHERE nome = 'Aluísio'), '2018-10-10', 777.00);

		INSERT INTO contasParaReceber(id_clientes, data_para_pagamento, valor_a_receber) VALUES
	((SELECT id FROM clientes WHERE nome = 'Úrsula'), '2018-10-14', 8001.00);

		INSERT INTO contasParaReceber(id_clientes, data_para_pagamento, valor_a_receber) VALUES
	((SELECT id FROM clientes WHERE nome = 'Salvador'), '2018-11-25', 232.12);

		INSERT INTO contasParaReceber(id_clientes, data_para_pagamento, valor_a_receber) VALUES
	((SELECT id FROM clientes WHERE nome = 'Úrsula'), '2018-09-13', 104.23);

		INSERT INTO contasParaReceber(id_clientes, data_para_pagamento, valor_a_receber) VALUES
	((SELECT id FROM clientes WHERE nome = 'Germana'), '2018-07-17', 65.00);

		INSERT INTO contasParaReceber(id_clientes, data_para_pagamento, valor_a_receber) VALUES
	((SELECT id FROM clientes WHERE nome = 'Aluísio'), '2018-10-06', 98.83);

		INSERT INTO contasParaReceber(id_clientes, data_para_pagamento, valor_a_receber) VALUES
	((SELECT id FROM clientes WHERE nome = 'Salvador'), '2018-12-12', 12.17);

		INSERT INTO contasParaReceber(id_clientes, data_para_pagamento, valor_a_receber) VALUES
	((SELECT id FROM clientes WHERE nome = 'Salvador'), '2018-12-23', 6.25);


		INSERT INTO contasParaPagar(id_clientes, data_vencimento, valor) VALUES
	((SELECT id FROM clientes WHERE nome = 'Úrsula'), '2018-12-08', 78.97);

		INSERT INTO contasParaPagar(id_clientes, data_vencimento, valor) VALUES
	((SELECT id FROM clientes WHERE nome = 'Salvador'), '2018-11-24', 700.00);

		INSERT INTO contasParaPagar(id_clientes, data_vencimento, valor) VALUES
	((SELECT id FROM clientes WHERE nome = 'Germana'), '2018-10-09', 45.87);

		INSERT INTO contasParaPagar(id_clientes, data_vencimento, valor) VALUES
	((SELECT id FROM clientes WHERE nome = 'Germana'), '2018-01-04', 39.50);

		INSERT INTO contasParaPagar(id_clientes, data_vencimento, valor) VALUES
	((SELECT id FROM clientes WHERE nome = 'Aluísio'), '2018-11-30', 123.45);

		INSERT INTO contasParaPagar(id_clientes, data_vencimento, valor) VALUES
	((SELECT id FROM clientes WHERE nome = 'Úrsula'), '2018-09-07', 987.65);

		INSERT INTO contasParaPagar(id_clientes, data_vencimento, valor) VALUES
	((SELECT id FROM clientes WHERE nome = 'Salvador'), '2018-07-06', 456.00);

	INSERT INTO celulares (id_clientes, valor) VALUES
	((SELECT id FROM clientes WHERE id = 1), '(79) 99973-5114');

		INSERT INTO celulares (id_clientes, valor) VALUES
	((SELECT id FROM clientes WHERE id = 2), '(27) 98390-5475');

			INSERT INTO celulares (id_clientes, valor) VALUES
	((SELECT id FROM clientes WHERE id = 1), '(55) 98587-4266');

			INSERT INTO celulares (id_clientes, valor) VALUES
	((SELECT id FROM clientes WHERE id = 4), '(14) 98387-5333');

			INSERT INTO celulares (id_clientes, valor) VALUES
	((SELECT id FROM clientes WHERE id = 3), '(92) 99973-5114');

			INSERT INTO celulares (id_clientes, valor) VALUES
	((SELECT id FROM clientes WHERE id = 4), '(55) 98616-2303');