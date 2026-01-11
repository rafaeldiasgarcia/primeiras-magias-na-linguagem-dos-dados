select t1.*,
       t2.DescDescricaoProduto

from transacao_produto as t1 -- tabela 1 (esquerda)

inner join produtos as t2 -- tabela 2 (direita)
on t1.IdProduto = t2.IdProduto
