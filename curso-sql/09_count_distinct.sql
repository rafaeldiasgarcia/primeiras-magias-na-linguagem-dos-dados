-- total de clientes entre data expecifica
SELECT count(DISTINCT idCliente)
       -- count(*)

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

ORDER BY DtCriacao DESC