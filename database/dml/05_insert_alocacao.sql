-- 5. Escala Semanal de Médicos (Alocações válidas para RN02)

-- Médico 1 (Ana Ribeiro - Clínica Médica - Regime 20h)
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(1, 1, 1, 1), -- Seg Manhã (UTI Adulto)
(1, 1, 2, 3), -- Qua Tarde (UTI Adulto)
(1, 5, 1, 5); -- Sex Manhã (Emergência Cardiológica)

-- Médico 2 (Bruno Carvalho - Cardiologia - Regime 24h)
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(2, 5, 1, 1), -- Seg Manhã (Emergência Cardiológica)
(2, 5, 2, 3); -- Qua Tarde (Emergência Cardiológica)

-- Médico 3 (Camila Nogueira - Pediatria - Regime 30h)
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(3, 7, 1, 1), -- Seg Manhã (Ambulatório Pediatria)
(3, 7, 2, 2), -- Ter Tarde (Ambulatório Pediatria)
(3, 2, 3, 4); -- Qui Noite (UTI Neonatal)

-- Médico 4 (Daniel Moreira - Ortopedia - Regime 30h)
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(4, 6, 1, 3), -- Qua Manhã (Ambulatório Ortopedia)
(4, 4, 2, 3), -- Qua Tarde (Pronto Atendimento)
(4, 3, 1, 4); -- Qui Manhã (Centro Cirúrgico)

-- Médico 5 (Eduarda Pacheco - Neurologia - Regime 36h) 
-- Excesso intencional de horas (60h) para testar a validação da Q5
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(5, 1, 3, 1), -- Seg Noite (12h)
(5, 1, 3, 2), -- Ter Noite (12h)
(5, 1, 3, 3), -- Qua Noite (12h)
(5, 1, 3, 4), -- Qui Noite (12h)
(5, 1, 3, 5); -- Sex Noite (12h)

-- Médico 6 (Felipe Teixeira - Ginecologia - Regime 36h)
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(6, 1, 1, 2); -- Ter Manhã (UTI Adulto)

-- Médico 7 (Gabriela Lacerda - Cirurgia Geral - Regime 40h)
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(7, 3, 1, 1), -- Seg Manhã (Centro Cirúrgico)
(7, 3, 2, 3); -- Qua Tarde (Centro Cirúrgico)

-- Médico 8 (Henrique Batista - Anestesiologia - Regime 40h)
INSERT INTO alocacao (id_medico, id_departamento, id_turno, dia_semana) VALUES
(8, 8, 1, 2); -- Ter Manhã (Ambulatório Geral)

-- NOTA: Médicos 9 e 10 não foram alocados para responder à Q3 (médicos sem alocação).