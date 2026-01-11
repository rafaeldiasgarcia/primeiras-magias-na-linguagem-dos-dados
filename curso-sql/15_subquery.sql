-- Dos clientes que começaram SQL no primeiro dia, quantos chegaram ao 5o dia?

select count(distinct IdCliente)

from transacoes as t1

where t1.IdCliente in (
    select distinct idCliente

    from transacoes

    where substr(DtCriacao, 1, 10) = '2025-08-25'
)

and substr(t1.DtCriacao, 1, 10) = '2025-08-29';
