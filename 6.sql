--6
SELECT 
    nome_professor
FROM 
    (SELECT 
        p.nome AS nome_professor,
        COUNT(t.id_turma) AS numero_turmas
     FROM 
        professor p
     JOIN 
        turma t ON p.id_professor = t.id_professor
     GROUP BY 
        p.nome) 
WHERE 
    numero_turmas > 3;

