/* 
----------Exercício 2992 – Divisões com Maiores Médias Salariais----------
Listar as divisões com maiores médias salariais dentro de seus
departamentos. A saída deverá apresentar o nome do
departamento, o nome da divisão com maior média salarial do
departamento e a média salarial da divisão. O resultado deve
estar em ordem decrescente usando a média salarial.
*/

WITH MediasPorDivisao AS (
    SELECT
        d.cod_divisao,
        AVG(v.valor) AS Media_Salarial
    FROM
        Divisao d
    LEFT JOIN
        Empregado e ON d.cod_divisao = e.lotacao_div
    LEFT JOIN
        Emp_venc ev ON e.matr = ev.matr
    LEFT JOIN
        Vencimento v ON ev.cod_venc = v.cod_venc
    GROUP BY
        d.cod_divisao
),
MaioresMediasPorDepartamento AS (
    SELECT
        dep.cod_dep,
        MAX(Media_Salarial) AS Maior_Media_Salarial
    FROM
        Departamento dep
    LEFT JOIN
        Divisao d ON dep.cod_dep = d.cod_dep
    LEFT JOIN
        MediasPorDivisao m ON d.cod_divisao = m.cod_divisao
    GROUP BY
        dep.cod_dep
)
SELECT
    dep.nome as Departamento,
    d.nome as Divisao,
    m.Maior_Media_Salarial AS Media_Salarial
FROM
    Departamento dep
LEFT JOIN
    Divisao d ON dep.cod_dep = d.cod_dep
LEFT JOIN
    MediasPorDivisao mpd ON d.cod_divisao = mpd.cod_divisao
INNER JOIN
    MaioresMediasPorDepartamento m ON dep.cod_dep = m.cod_dep AND mpd.Media_Salarial = m.Maior_Media_Salarial
