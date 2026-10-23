CREATE TABLE especialidade(
  id_especialidade INT PRIMARY KEY,
  nome VARCHAR(50) UNIQUE
);

CREATE TABLE regime_trabalho(
  id_regime INT PRIMARY KEY,
  descricao TEXT UNIQUE,
  carga_horaria_semanal int
);

CREATE TABLE medico(
  id_medico INT PRIMARY KEY,
  nome VARCHAR(50),
  crm TEXT UNIQUE,
  email TEXT UNIQUE,
  data_admissao VARCHAR(10),
  id_especialidade INT NOT NULL,
  id_regime INT,
  FOREIGN KEY (id_especialidade) REFERENCES especialidade(id_especialidade),
  FOREIGN KEY (id_regime) REFERENCES regime_trabalho(id_regime)
);

CREATE TABLE predio(
  id_predio INT PRIMARY KEY,
  nome VARCHAR(50) UNIQUE NOT NULL,
  endereco VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE departamento(
  id_departamento INT PRIMARY KEY,
  nome VARCHAR(50) UNIQUE NOT NULL,
  id_predio INT NOT NULL,
  FOREIGN KEY (id_predio) REFERENCES predio (id_predio)
);

CREATE TABLE turno(
  id_turno INT PRIMARY KEY,
  desc VARCHAR(20) UNIQUE
);

CREATE TABLE departamento_especialidade(
  id_departamento INT NOT NULL,
  id_especialidade INT NOT NULL,
  (id_departamento, id_especialidade) PRIMARY KEY,
  FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento),
  FOREIGN KEY (id_especialidade) REFERENCES especialidade(id_especialidade)
);

CREATE TABLE alocacao(
  id_medico INT NOT NULL,
  id_departamento INT NOT NULL,
  id_turno INT NOT NULL,
  dia INT NOT NULL CHECK (dia BETWEEN 1 AND 7),
  (id_medico, id_turno, dia) PRIMARY KEY,
  FOREIGN KEY (id_medico) REFERENCES medico(id_medico),
  FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento),
  FOREIGN KEY (id_turno) REFERENCES turno(id_turno),
);