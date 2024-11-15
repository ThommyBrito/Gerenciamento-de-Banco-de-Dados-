SELECT 
    id_professor, 
    nome, 
    especialidade AS especialidade_professor
FROM 
    professor
ORDER BY 
    especialidade_professor DESC;
