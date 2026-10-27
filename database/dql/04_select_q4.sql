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

DELETE FROM alocacao WHERE id_medico = 6 AND id_departamento = 1;

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