SELECT 
    a.dia_semana,
    d.nome AS departamento,
    COUNT(DISTINCT a.id_medico) AS quantidade_medicos
FROM alocacao a
JOIN departamento d ON a.id_departamento = d.id_departamento
GROUP BY a.dia_semana, d.nome
ORDER BY a.dia_semana, d.nome;