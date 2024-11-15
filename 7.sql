--7
SELECT 
    nome_aluno
FROM 
    (SELECT 
        a.nome AS nome_aluno,
        COUNT(m.id_disciplina) AS numero_disciplinas
     FROM 
        aluno a
     JOIN 
        matricula m ON a.id_aluno = m.id_aluno
     GROUP BY 
        a.nome) 
WHERE 
    numero_disciplinas > 1;


