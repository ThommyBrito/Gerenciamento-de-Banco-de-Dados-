--14
SELECT t.id_turma, 
       p.nome AS professor, 
       d.nome AS disciplina, 
       t.horario
FROM turma t
JOIN professor p ON t.id_professor = p.id_professor
JOIN disciplina d ON t.id_disciplina = d.id_disciplina
ORDER BY t.horario;

