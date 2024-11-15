--5
SELECT 
    c.nome AS curso,
    (SELECT SUM(d.carga_horaria) 
     FROM disciplina d 
     WHERE d.id_curso = c.id_curso) AS total_carga_horaria
FROM 
    curso c;


