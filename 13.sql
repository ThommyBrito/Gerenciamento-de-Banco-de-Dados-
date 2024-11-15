--13 
SELECT d.nome AS disciplina, 
       COUNT(*) AS numero_alunos
FROM disciplina d
JOIN matricula m ON d.id_disciplina = m.id_disciplina
GROUP BY d.nome
ORDER BY numero_alunos DESC;

