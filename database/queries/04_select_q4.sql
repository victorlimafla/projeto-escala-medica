-- =============================================================================
-- Consulta: Q4 - Alocações em departamento incompatível com a especialidade
-- Objetivo: Validar a Regra de Negócio RN02 (Compatibilidade de Especialidade).
-- Foco: Anti-join via LEFT JOIN com departamento_especialidade (WHERE de.id_especialidade IS NULL).
--
-- RESULTADO ESPERADO:
-- Nenhum registro retornado (0 linhas / resultado vazio).
-- Confirma que todas as alocações da escala respeitam as permissões do departamento.
-- =============================================================================

SELECT 
    a.id_alocacao,
    m.nome AS medico,
    e.nome AS especialidade_medico,
    d.nome AS departamento
FROM alocacao a
JOIN medico m ON a.id_medico = m.id_medico
JOIN especialidade e ON m.id_especialidade = e.id_especialidade
JOIN departamento d ON a.id_departamento = d.id_departamento
LEFT JOIN departamento_especialidade de 
       ON a.id_departamento = de.id_departamento 
      AND m.id_especialidade = de.id_especialidade
WHERE de.id_especialidade IS NULL;