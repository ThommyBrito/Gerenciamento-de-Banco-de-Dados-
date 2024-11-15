--12 
SELECT a.nome AS aluno, 
       TRUNC((SYSDATE - a.data_nascimento) / 365.25) AS idade
FROM aluno a
ORDER BY idade DESC;


