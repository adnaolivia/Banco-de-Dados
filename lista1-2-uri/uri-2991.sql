/* 
---------Exercício 2991 - Estatísticas dos Departamentos--------
Para cada departamento da empresa, mostrar o nome dele, a
quantidade de empregados lotados, a média salarial, o maior
salário e o menor salário. O resultado deve estar em ordem
decrescente por média salarial.
*/

SELECT
    d.nome AS Nome_Departamento,
    COUNT(e.matr) AS Qtde_Empregados_Lotados,
    AVG(v.valor) AS Media_Salarial,
    MAX(v.valor) AS Maior_Salario,
    MIN(v.valor) AS Menor_Salario
FROM
    Departamento d
LEFT JOIN
    Divisao dv ON d.cod_dep = dv.cod_dep
LEFT JOIN
    Empregado e ON dv.cod_divisao = e.lotacao_div
LEFT JOIN
    Emp_venc ev ON e.matr = ev.matr
LEFT JOIN
    Vencimento v ON ev.cod_venc = v.cod_venc
GROUP BY
    d.nome
ORDER BY
    Media_Salarial DESC;