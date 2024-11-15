--16
SELECT c.nome AS curso, 
       (SELECT COUNT(*) FROM disciplina d WHERE d.id_curso = c.id_curso) AS total_disciplinas
FROM curso c;
