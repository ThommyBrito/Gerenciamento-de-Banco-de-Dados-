--9 
WITH turmas_por_professor AS (
    SELECT t.id_professor, COUNT(t.id_turma) AS total_turmas
    FROM turma t
    GROUP BY t.id_professor
)
SELECT p.nome AS professor, t.total_turmas
FROM professor p
JOIN turmas_por_professor t ON p.id_professor = t.id_professor;
