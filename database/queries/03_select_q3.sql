-- =============================================================================
-- Consulta: Q3 - Médicos sem nenhuma alocação na semana
-- Objetivo: Listar profissionais cadastrados que não foram escalados.
-- Foco: Utilização de LEFT JOIN com filtro a.id_alocacao IS NULL.
--
-- RESULTADO ESPERADO (primeiras linhas):
-- id_medico | medico           | especialidade
-- ----------+------------------+--------------
-- 11        | Karina Siqueira  | Dermatologia
-- 12        | Leonardo Amaral  | Ortopedia
-- 13        | Mariana Coutinho | Ortopedia
-- 14        | Nicolas Barreto  | Radiologia
-- ... | ... | ...
-- (Total: 26 linhas - Médicos do ID 11 ao 36)
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
