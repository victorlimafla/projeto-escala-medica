-- 5. Inserção das Alocações (Escala dos Médicos)

-- Médico 1 (ex: Cardiologista / Regime 24h ou 40h)
-- Alocado na Quarta-feira à tarde (dia 3, turno 2)
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(1, 1, 1, 1), -- Segunda Manhã (UTI Adulto - Bloco A)
(1, 1, 2, 3), -- Quarta Tarde (UTI Adulto - Bloco A)
(1, 5, 1, 5); -- Sexta Manhã (Emergência Cardiológica - Bloco C)

-- Médico 2 (ex: Pediatra)
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(2, 7, 1, 1), -- Segunda Manhã
(2, 7, 2, 3), -- Quarta Tarde (Bloco B)
(2, 4, 3, 5); -- Sexta Noite

-- Médico 3 (ex: Ortopedista)
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(3, 6, 1, 1), -- Segunda Manhã
(3, 6, 2, 2), -- Terça Tarde
(3, 3, 3, 4); -- Quinta Noite

-- Médico 4 (ex: Clínico Geral)
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(4, 4, 1, 3), -- Quarta Manhã
(4, 4, 2, 3), -- Quarta Tarde (Bloco C)
(4, 8, 1, 4); -- Quinta Manhã

-- Médico 5 (Excesso intencional de horas para testar a Q5 - Regime estourado)
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(5, 1, 3, 1), -- Segunda Noite (12h)
(5, 1, 3, 2), -- Terça Noite (12h)
(5, 1, 3, 3), -- Quarta Noite (12h)
(5, 1, 3, 4), -- Quinta Noite (12h)
(5, 1, 3, 5); -- Sexta Noite (12h) -> Total 60h

-- Médico 6 (Incompatibilidade intencional de departamento/especialidade para testar a Q4)
-- Exemplo: Alocado em Pediatria (dep 7) sem ser especialista compatível no departamento_especialidade
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(6, 1, 1, 2); -- Terça Manhã

-- Médicos 7 e 8 com alocações regulares
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(7, 3, 1, 1),
(7, 3, 2, 3), -- Quarta Tarde (Bloco A)
(8, 8, 1, 2);

-- NOTA: Médicos 9 e 10 NÃO foram inseridos na tabela `alocacao`