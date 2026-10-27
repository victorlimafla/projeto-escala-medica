-- 4. Inserção de Compatibilidade
INSERT INTO departamento_especialidade (id_departamento, id_especialidade) VALUES
-- UTI Adulto (Dep 1): Ortopedia (4), Dermatologia (11)
(1, 4), (1, 11),

-- Centro Cirúrgico (Dep 3): Cardiologia (2), Dermatologia (11)
(3, 2), (3, 11),

-- Pronto Atendimento (Dep 4): Radiologia (10)
(4, 10),

-- Pronto Atendimento (Dep 4): Neurologia (5)
(4, 5),

-- Emergência Cardiológica (Dep 5): Ortopedia (4)
(5, 4),

-- Ambulatório de Ortopedia (Dep 6): Cardiologia (2)
(6, 2),

-- Ambulatório de Pediatria (Dep 7): Neurologia (5)
(7, 5),

-- Ambulatório Geral (Dep 8): Radiologia (10), Medicina Intensiva (9)
(8, 10), (8, 9);