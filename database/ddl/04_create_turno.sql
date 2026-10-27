CREATE TABLE turno (
    id_turno INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao TEXT NOT NULL UNIQUE,
    hora_inicio TEXT NOT NULL CHECK (hora_inicio GLOB '[0-2][0-9]:[0-5][0-9]'),
    hora_fim TEXT NOT NULL CHECK (hora_fim GLOB '[0-2][0-9]:[0-5][0-9]'),
    horas_duracao INTEGER NOT NULL CHECK (horas_duracao > 0)
);