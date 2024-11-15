--19 
SELECT m.status, COUNT(m.id_aluno) AS total_alunos
FROM matricula m
GROUP BY m.status
ORDER BY total_alunos DESC;

