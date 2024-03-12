/*
--------- Exercício 2609 – Produtos por Categoria ---------
Como de costume o setor de vendas está fazendo uma análise
de quantos produtos temos em estoque, e você poderá ajudar
eles.
Então seu trabalho será exibir o nome e a quantidade de
produtos de cada uma categoria.
Obs.: Os dados do banco de dados desta questão não estão
exatamente iguais ao do site.
*/

SELECT
    p.name as Produto,
    p.amount as Quantidade,
    cat.name as Categoria
FROM
    Products as p
LEFT JOIN
    Categories as cat ON p.id_categories = cat.id
GROUP BY
    cat.name
