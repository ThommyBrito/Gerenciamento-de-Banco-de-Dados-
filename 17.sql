--17
SELECT p.nome AS professor
FROM professor p
WHERE (
    SELECT COUNT(*) 
    FROM turma t 
    JOIN disciplina d ON t.id_disciplina = d.id_disciplina
    WHERE t.id_professor = p.id_professor AND d.carga_horaria > 100
) > 2;


