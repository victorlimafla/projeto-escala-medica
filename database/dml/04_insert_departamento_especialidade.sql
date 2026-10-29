-- 4. Inserção de Compatibilidade entre Departamentos e Especialidades (RN02)
INSERT INTO departamento_especialidade (id_departamento, id_especialidade) VALUES
-- UTI Adulto (Dep 1): Ortopedia (4), Cirurgia Geral (7), Medicina Intensiva (9), Dermatologia (11)
(1, 4), (1, 7), (1, 9), (1, 11),

-- UTI Neonatal (Dep 2): Cardiologia (2)
(2, 2),

-- Centro Cirúrgico (Dep 3): Anestesiologia (8), Radiologia (10), Dermatologia (11)
(3, 8), (3, 10), (3, 11),

-- Pronto Atendimento (Dep 4): Neurologia (5), Radiologia (10)
(4, 5), (4, 10),

-- Emergência Cardiológica (Dep 5): Ortopedia (4), Neurologia (5)
(5, 4), (5, 5),

-- Ambulatório de Ortopedia (Dep 6): Radiologia (10)
(6, 10),

-- Ambulatório de Pediatria (Dep 7): Cardiologia (2), Neurologia (5)
(7, 2), (7, 5),

-- Ambulatório Geral (Dep 8): Medicina Intensiva (9), Radiologia (10)
(8, 9), (8, 10);
