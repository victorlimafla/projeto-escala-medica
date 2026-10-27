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