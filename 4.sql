--4
SELECT 
    status AS situacao_matricula, 
    COUNT(id_aluno) AS total_alunos
FROM 
    matricula
GROUP BY 
    status;

