select *

from (
    select *
    from transacoes
    where DtCriacao >= '2025-01-01'
);