-- =============================================================================
-- Consulta: Q6 - Quantidade de médicos por departamento em cada dia da semana
-- Objetivo: Mapear a densidade de ocupação diária dos departamentos do hospital.
-- Foco: Agrupamento GROUP BY por dia_semana e departamento com COUNT(DISTINCT).
--
-- RESULTADO ESPERADO:
-- dia_semana | departamento             | quantidade_medicos
-- -----------+--------------------------+-------------------
-- 1          | Ambulatório de Pediatria | 1
-- 1          | Centro Cirúrgico         | 1
-- 1          | Emergência Cardiológica  | 1
-- 1          | UTI Adulto               | 3
-- 2          | Ambulatório Geral        | 1
-- 2          | Ambulatório de Pediatria | 1
-- 2          | Centro Cirúrgico         | 1
-- 2          | UTI Adulto               | 1
-- 3          | Ambulatório de Ortopedia | 1
-- 3          | Centro Cirúrgico         | 1
-- 3          | Emergência Cardiológica  | 1
-- 3          | Pronto Atendimento       | 1
-- 3          | UTI Adulto               | 1
-- 4          | Centro Cirúrgico         | 2
-- 4          | UTI Adulto               | 2
-- 4          | UTI Neonatal             | 1
-- 5          | Emergência Cardiológica  | 1
-- (Total: 17 linhas)
-- =============================================================================

SELECT 
    a.dia_semana,
    d.nome AS departamento,
    COUNT(DISTINCT a.id_medico) AS quantidade_medicos
FROM alocacao a
JOIN departamento d ON a.id_departamento = d.id_departamento
GROUP BY a.dia_semana, d.nome
ORDER BY a.dia_semana, d.nome;
