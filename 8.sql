--8
WITH carga_total AS (
    SELECT c.id_curso, c.nome AS curso, SUM(d.carga_horaria) AS carga_horaria_total
    FROM curso c
    JOIN disciplina d ON c.id_curso = d.id_curso
    GROUP BY c.id_curso, c.nome
)
SELECT curso, carga_horaria_total
FROM carga_total
WHERE carga_horaria_total > 2000;




