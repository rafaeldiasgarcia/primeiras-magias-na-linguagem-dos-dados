-- select IdProduto,
--        count(*)
--
-- from transacao_produto
--
-- -- agrupando por cada produto
-- group by IdProduto;

select IdCliente,
       sum(QtdePontos),
       count(IdTransacao)

from transacoes

where DtCriacao >= '2025-07-01'
and DtCriacao < '2025-08-01'

group by IdCliente
having sum(QtdePontos) >= 4000

order by sum(QtdePontos) desc

