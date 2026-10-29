-- =============================================================================
-- Consulta: Q3 - Médicos sem nenhuma alocação na semana
-- Objetivo: Listar profissionais cadastrados que não foram escalados.
-- Foco: Utilização de LEFT JOIN com filtro a.id_alocacao IS NULL.
--
-- RESULTADO ESPERADO:
-- id_medico | medico          | especialidade
-- ----------+-----------------+-------------------
-- 9         | Isabela Fontes  | Anestesiologia
-- 10        | João Pereira    | Medicina Intensiva
-- ...       | ...             | ...
-- 36        | (Demais)        | ...
-- (Total: 28 linhas - Médicos do ID 9 ao 36)
-- =============================================================================

SELECT 
    m.id_medico,
    m.nome AS medico,
    e.nome AS especialidade
FROM medico m
LEFT JOIN alocacao a ON m.id_medico = a.id_medico
JOIN especialidade e ON m.id_especialidade = e.id_especialidade
WHERE a.id_alocacao IS NULL
ORDER BY m.id_medico;