/* 
--------Exercício 2989 – Departamentos e Divisões--------
Para cada departamento, mostrar o nome do departamento, o
nome de suas divisões, com a respectiva média salarial e o
maior salário de cada divisão. O resultado deve estar em ordem
decrescente usando a média salarial.
*/

SELECT
    d.nome AS Nome_Departamento,
    dv.nome AS Nome_Divisao,
    AVG(v.valor) AS Media_Salarial,
    MAX(v.valor) AS Maior_Salario
FROM
    Departamento d
INNER JOIN
    Divisao dv ON d.cod_dep = dv.cod_dep
INNER JOIN
    Empregado e ON dv.cod_divisao = e.lotacao_div
INNER JOIN
    Emp_venc ev ON e.matr = ev.matr
INNER JOIN
    Vencimento v ON ev.cod_venc = v.cod_venc
GROUP BY
    d.nome, dv.nome
ORDER BY
    Media_Salarial DESC;