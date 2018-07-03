DROP TABLE carros;
DROP TABLE pessoas;
CREATE TABLE pessoas(
	id INT IDENTITY(1,1),
	nome VARCHAR (200),
	cpf CHAR (11),
	PRIMARY KEY (id)
);

CREATE TABLE carros(
	id INT IDENTITY(1,1),
	id_pessoa INT, 
	marca VARCHAR (150) NOT NULL,
	modelo VARCHAR(150) NOT NULL,
	ano_lancamento INT NOT NULL,
	ano_fabricacao INT NOT NULL,
	motor VARCHAR (150),
	cor VARCHAR (100),
	preco DECIMAL,
	PRIMARY KEY(id),
	FOREIGN KEY(id_pessoa) REFERENCES pessoas(id)
);

INSERT INTO pessoas (nome, cpf) VALUES
('Abraão Nobre', '95232829483');

INSERT INTO pessoas (nome, cpf) VALUES
('Severino Braga', '87677033300');

INSERT INTO pessoas (nome, cpf) VALUES
('Samuel Faria', '98927203429');

INSERT INTO pessoas (nome, cpf) VALUES
('Florêncio Robalo', '36263517425');

INSERT INTO carros(id_pessoa, marca, modelo, ano_lancamento,ano_fabricacao, motor, cor, preco) VALUES
((SELECT id FROM pessoas WHERE nome = 'Abraão Nobre'), 'Volkswagen', 'Gol', 2010, 2009, '8v Power Flex', 'Vermelho', 1800000);

INSERT INTO carros(id_pessoa, marca, modelo, ano_lancamento,ano_fabricacao, motor, cor, preco) VALUES
((SELECT id FROM pessoas WHERE nome = 'Severino Braga'), 'Fiat', 'Brava', 2000, 1999, 'SX 1.6 16V', 'Cinz', 900000);

INSERT INTO carros(id_pessoa, marca, modelo, ano_lancamento,ano_fabricacao, motor, cor, preco) VALUES
((SELECT id FROM pessoas WHERE nome = 'Samuel Faria'), 'Renault', 'Clio', 1997, 1996, '1.0 8v', 'Verde', 550000);

INSERT INTO carros(id_pessoa, marca, modelo, ano_lancamento,ano_fabricacao, motor, cor, preco) VALUES
((SELECT id FROM pessoas WHERE nome = 'Florêncio Robalo'), 'Volkswagen', 'Golf', 1994, 1994, '2.0 120cv', 'Azul', 1700000);