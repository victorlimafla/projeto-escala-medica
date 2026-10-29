-- =============================================================================
-- Consulta: Q5 - Horas alocadas vs Carga horária do regime por médico
-- Objetivo: Validar a Regra de Negócio RN03 (Carga Horária Máxima do Regime).
-- Foco: Agrupamento por médico, soma das durações dos turnos e comparação CASE.
--
-- RESULTADO ESPERADO:
-- id_medico | medico          | regime          | carga_permitida | horas_alocadas | excedeu_limite
-- ----------+-----------------+-----------------+-----------------+----------------+---------------
-- 5         | Eduarda Pacheco | Parcial 30h     | 30              | 60             | SIM
-- 3         | Camila Nogueira | Parcial 30h     | 30              | 24             | NÃO
-- 1         | Ana Ribeiro     | Parcial 30h     | 30              | 18             | NÃO
-- 4         | Daniel Moreira  | Integral 40h    | 40              | 18             | NÃO
-- 2         | Bruno Carvalho  | Parcial 20h     | 20              | 12             | NÃO
-- 7         | Gabriela Lacerda| Integral 40h    | 40              | 12             | NÃO
-- 6         | Felipe Teixeira | Plantonista 24h | 24              | 6              | NÃO
-- 8         | Henrique Batista| Plantonista 24h | 24              | 6              | NÃO
-- (Total: 8 linhas - Apenas o Médico ID 5 ultrapassa a carga com 'SIM')
-- =============================================================================

SELECT 
    m.id_medico,
    m.nome AS medico,
    r.descricao AS regime,
    r.carga_horaria_semanal AS carga_permitida,
    SUM(t.horas_duracao) AS horas_alocadas,
    CASE 
        WHEN SUM(t.horas_duracao) > r.carga_horaria_semanal THEN 'SIM'
        ELSE 'NÃO'
    END AS excedeu_limite
FROM medico m
JOIN regime_trabalho r ON m.id_regime = r.id_regime
JOIN alocacao a ON m.id_medico = a.id_medico
JOIN turno t ON a.id_turno = t.id_turno
GROUP BY m.id_medico, m.nome, r.descricao, r.carga_horaria_semanal
ORDER BY excedeu_limite DESC, horas_alocadas DESC;