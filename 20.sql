--20
SELECT prf.nome AS professor, SUM(disc.carga_horaria) AS carga_horaria_total
FROM professor prf
JOIN turma trm ON prf.id_professor = trm.id_professor
JOIN disciplina disc ON trm.id_disciplina = disc.id_disciplina
GROUP BY prf.nome
ORDER BY carga_horaria_total DESC;
