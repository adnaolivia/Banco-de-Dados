/*
-----------Exercício 2617 – Fornecedor Ajax SA-------------
O setor financeiro encontrou alguns problemas na entrega de
um dos nossos fornecedores, a entrega dos produtos não condiz
com a nota fiscal.
Seu trabalho é exibir o nome dos produtos e o nome do
fornecedor, para os produtos fornecidos pelo fornecedor ‘Ajax
SA’.
*/

SELECT 
    p.name as Produto
    f.name as Fornecedor
FROM
    Products as p
    Providers as f 
