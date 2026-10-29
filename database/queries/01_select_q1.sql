-- =============================================================================
-- Consulta: Q1 - Escala semanal completa de um médico
-- Objetivo: Responder à Pergunta Central do projeto para o médico selecionado.
-- Foco: Filtro por id_medico e ordenação cronológica por dia e turno.
--
-- RESULTADO ESPERADO (para id_medico = 1 - Ana Ribeiro):
-- medico       | especialidade | dia_semana | turno | predio              | departamento
-- -------------+---------------+------------+-------+---------------------+-----------------------
-- Ana Ribeiro  | Ortopedia     | 1          | Manhã | Bloco A - Principal | UTI Adulto
-- Ana Ribeiro  | Ortopedia     | 3          | Tarde | Bloco A - Principal | UTI Adulto
-- Ana Ribeiro  | Ortopedia     | 5          | Manhã | Bloco C - Emergência| Emergência Cardiológica
-- (Total: 3 linhas)
-- =============================================================================

SELECT 
    m.nome AS medico,
    e.nome AS especialidade,
    a.dia_semana,
    t.descricao AS turno,
    p.nome AS predio,
    d.nome AS departamento
FROM alocacao a
JOIN medico m ON a.id_medico = m.id_medico
JOIN especialidade e ON m.id_especialidade = e.id_especialidade
JOIN departamento d ON a.id_departamento = d.id_departamento
JOIN predio p ON d.id_predio = p.id_predio
JOIN turno t ON a.id_turno = t.id_turno
WHERE m.id_medico = 1
ORDER BY a.dia_semana, t.id_turno;