-- =============================================================================
-- Consulta: Q6 - Quantidade de médicos por departamento em cada dia da semana
-- Objetivo: Mapear a densidade de ocupação diária dos departamentos do hospital.
-- Foco: Agrupamento GROUP BY por dia_semana e departamento com COUNT(DISTINCT).
--
-- RESULTADO ESPERADO (Primeiras linhas do agrupamento):
-- dia_semana | departamento             | quantidade_medicos
-- -----------+--------------------------+-------------------
-- 1          | Ambulatório de Pediatria | 1
-- 1          | Centro Cirúrgico         | 1
-- 1          | Emergência Cardiológica  | 1
-- 1          | UTI Adulto               | 2
-- 2          | Ambulatório Geral        | 1
-- 2          | Ambulatório de Pediatria | 1
-- 2          | UTI Adulto               | 2
-- ...        | ...                      | ...
-- (Total: 17 linhas retornadas contendo as contagens agregadas por dia e setor)
-- =============================================================================

SELECT 
    a.dia_semana,
    d.nome AS departamento,
    COUNT(DISTINCT a.id_medico) AS quantidade_medicos
FROM alocacao a
JOIN departamento d ON a.id_departamento = d.id_departamento
GROUP BY a.dia_semana, d.nome
ORDER BY a.dia_semana, d.nome;