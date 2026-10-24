CREATE TABLE turno (
    id_turno INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao TEXT NOT NULL UNIQUE, -- Ex: 'Manhã', 'Tarde', 'Noite'
    hora_inicio TEXT NOT NULL,       -- Formato HH:MM, ex: '07:00'
    hora_fim TEXT NOT NULL,          -- Formato HH:MM, ex: '13:00'
    horas_duracao INTEGER NOT NULL   -- Ex: 6, 12
);