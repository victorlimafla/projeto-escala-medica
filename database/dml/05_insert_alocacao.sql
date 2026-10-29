-- 5. Escala Semanal de 10 Médicos
-- Todas as alocações respeitam a RN02 (departamento aceita a especialidade do médico)
-- e a RN03 (horas semanais dentro da carga do regime). Dias: 1 = segunda ... 7 = domingo.
-- Turnos: 1 = Manhã (6h), 2 = Tarde (6h), 3 = Noite (12h).

-- Médico 1 (Ana Ribeiro - Ortopedia - Parcial 30h) -> 18h
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(1, 1, 1, 1), -- Seg Manhã (UTI Adulto)
(1, 1, 2, 3), -- Qua Tarde (UTI Adulto)
(1, 5, 1, 5); -- Sex Manhã (Emergência Cardiológica)

-- Médico 2 (Bruno Carvalho - Neurologia - Parcial 20h) -> 12h
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(2, 5, 1, 1), -- Seg Manhã (Emergência Cardiológica)
(2, 5, 2, 3); -- Qua Tarde (Emergência Cardiológica)

-- Médico 3 (Camila Nogueira - Cardiologia - Parcial 30h) -> 24h
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(3, 7, 1, 1), -- Seg Manhã (Ambulatório de Pediatria)
(3, 7, 2, 2), -- Ter Tarde (Ambulatório de Pediatria)
(3, 2, 3, 4); -- Qui Noite (UTI Neonatal)

-- Médico 4 (Daniel Moreira - Radiologia - Integral 40h) -> 18h
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(4, 6, 1, 3), -- Qua Manhã (Ambulatório de Ortopedia)
(4, 4, 2, 3), -- Qua Tarde (Pronto Atendimento)
(4, 3, 1, 4); -- Qui Manhã (Centro Cirúrgico)

-- Médico 5 (Eduarda Pacheco - Dermatologia - Parcial 30h) -> 24h
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(5, 1, 3, 1), -- Seg Noite (UTI Adulto)
(5, 1, 3, 4); -- Qui Noite (UTI Adulto)

-- Médico 6 (Felipe Teixeira - Cirurgia Geral - Plantonista 24h) -> 6h
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(6, 1, 1, 2); -- Ter Manhã (UTI Adulto)

-- Médico 7 (Gabriela Lacerda - Dermatologia - Integral 40h) -> 12h
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(7, 3, 1, 1), -- Seg Manhã (Centro Cirúrgico)
(7, 3, 2, 3); -- Qua Tarde (Centro Cirúrgico)

-- Médico 8 (Henrique Batista - Medicina Intensiva - Plantonista 24h) -> 6h
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(8, 8, 1, 2); -- Ter Manhã (Ambulatório Geral)

-- Médico 9 (Isabela Fontes - Anestesiologia - Plantonista 24h) -> 12h
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(9, 3, 1, 2), -- Ter Manhã (Centro Cirúrgico)
(9, 3, 2, 4); -- Qui Tarde (Centro Cirúrgico)

-- Médico 10 (João Pereira - Medicina Intensiva - Integral 40h) -> 12h
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(10, 1, 2, 1), -- Seg Tarde (UTI Adulto)
(10, 1, 1, 4); -- Qui Manhã (UTI Adulto)

-- NOTA: Os médicos 11 a 36 não possuem alocação, o que permite à Q3 retornar resultados.
