--11
SELECT nome AS aluno, status AS status_matricula, data_matricula
FROM (
    SELECT a.nome, m.status, m.data_matricula
    FROM aluno a
    JOIN matricula m ON a.id_aluno = m.id_aluno
)
ORDER BY status, data_matricula;

