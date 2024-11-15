--15 
SELECT COUNT(CASE WHEN carga_horaria > 80 THEN 1 END) AS total_disciplina
FROM disciplina;