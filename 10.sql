--10
WITH media_carga AS (
    SELECT d.id_curso, AVG(d.carga_horaria) AS media_carga_horaria
    FROM disciplina d
    GROUP BY d.id_curso
)
SELECT c.nome AS curso, m.media_carga_horaria
FROM curso c
JOIN media_carga m ON c.id_curso = m.id_curso;
