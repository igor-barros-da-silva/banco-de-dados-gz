CREATE TABLE hospede (
	nome VARCHAR (25) NOT NULL,
	genero VARCHAR (1),
	biotipo VARCHAR (1),
	altura NUMERIC (5,2), 
	PRIMARY KEY (nome)
)
CREATE TABLE quarto (
	nome VARCHAR (25) NOT NULL,
	quarto INT NOT NULL,
	chegada DATE NOT NULL,
	saida DATE NOT NULL,
	desconto NUMERIC (5,2),
	PRIMARY KEY (nome, quarto)
)

SELECT * FROM hospede;

INSERT INTO hospede (nome, genero, biotipo, altura)
VALUES 
('MIGUEL', 'M', 'M', 1.67),
('JOSIEL', 'M', 'M', 1.72),
('RAQUEL', 'F', 'G', 1.65),
('LUCIANA', 'F', 'G', 1.80),
('JOANA', 'F', 'M', 1.65),
('EMANUEL', 'M', 'M', 1.78);

TRUNCATE TABLE hospede;
SELECT * FROM quarto;
SELECT * FROM hospede;

ALTER TABLE quarto ADD CONSTRAINT fkQuarto FOREIGN KEY (nome) 
REFERENCES hospede (nome)
ON UPDATE CASCADE 
ON DELETE CASCADE