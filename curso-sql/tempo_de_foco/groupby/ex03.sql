-- Qual cliente fez mais transações no ano de 2024?

select IdCliente

from transacoes

where DtCriacao >= '2024-01-01'
and DtCriacao < '2025-01-01'

group by IdCliente

order by count(*) desc

limit 1;

