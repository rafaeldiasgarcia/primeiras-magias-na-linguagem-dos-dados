-- Qual cliente juntou mais pontos positivos em 2025-05?

select IdCliente
       -- sum(QtdePontos) as totalPopntos

from transacoes

where DtCriacao >= '2025-05-01'
and DtCriacao < '2025-06-01'
and QtdePontos > 0

group by IdCliente

order by sum(QtdePontos) desc

limit 1

