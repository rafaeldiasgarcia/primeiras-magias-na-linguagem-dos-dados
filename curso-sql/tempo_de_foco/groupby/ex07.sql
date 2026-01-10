-- Qual o produto mais transacionado?

select IdProduto,
       -- count(*),
       sum(QtdeProduto) as qtdeProdutoSum

from transacao_produto

group by IdProduto

order by count(*) desc

limit 1