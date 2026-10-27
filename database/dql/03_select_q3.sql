SELECT 
    m.id_medico,
    m.nome AS medico,
    e.nome AS especialidade
FROM medico m
LEFT JOIN alocacao a ON m.id_medico = a.id_medico
JOIN especialidade e ON m.id_especialidade = e.id_especialidade
WHERE a.id_alocacao IS NULL
ORDER BY m.id_medico;
