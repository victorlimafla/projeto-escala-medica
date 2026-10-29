-- =============================================================================
-- Consulta: Q2 - Médicos presentes em um prédio em um dia/turno específico
-- Objetivo: Identificar quem está presente no Bloco A na quarta-feira à tarde.
-- Foco: Cruzamento de prédio (id_predio = 1), dia (dia_semana = 3) e turno (id_turno = 2).
--
-- RESULTADO ESPERADO:
-- medico           | especialidade | predio              | departamento
-- -----------------+---------------+---------------------+-------------------
-- Ana Ribeiro      | Ortopedia     | Bloco A - Principal | UTI Adulto
-- Gabriela Lacerda | Dermatologia  | Bloco A - Principal | Centro Cirúrgico
-- (Total: 2 linhas)
-- =============================================================================

SELECT 
    m.nome AS medico,
    e.nome AS especialidade,
    p.nome AS predio,
    d.nome AS departamento
FROM alocacao a
JOIN medico m ON a.id_medico = m.id_medico
JOIN especialidade e ON m.id_especialidade = e.id_especialidade
JOIN departamento d ON a.id_departamento = d.id_departamento
JOIN predio p ON d.id_predio = p.id_predio
WHERE p.id_predio = 1       -- Bloco A
  AND a.dia_semana = 3      -- Quarta-feira (ISO 8601)
  AND a.id_turno = 2;       -- Turno Tarde