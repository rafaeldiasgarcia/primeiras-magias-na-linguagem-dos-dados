-- Qual categoria tem mais produtos vendidos?

select
       t2.DescCategoriaProduto,
       count(distinct t1.IdTransacao) as qtdeTransacao

from transacao_produto as t1 -- tabela da esquerda

left join produtos as t2 -- tabela da direita
on t1.IdProduto = t2.IdProduto

group by t2.DescCategoriaProduto
order by count(distinct t1.IdTransacao) desc

limit 1

