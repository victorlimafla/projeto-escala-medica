CREATE TABLE departamento (
    id_departamento INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    id_predio INTEGER NOT NULL,
    FOREIGN KEY (id_predio) REFERENCES predio(id_predio),
	CONSTRAINT unq_departamento_predio UNIQUE (nome, id_predio)
);