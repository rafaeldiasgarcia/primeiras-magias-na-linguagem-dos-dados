-- common table expression

with tb_cliente_primeiro_dia as (
    select distinct transacoes.IdCliente
    from transacoes
    where substr(DtCriacao, 1, 10) = '2025-08-25'
),

tb_cliente_ultimo_dia as (
    select distinct transacoes.IdCliente
    from transacoes
    where substr(DtCriacao, 1, 10) = '2025-08-29'
),

tb_join as (
    select t1.IdCliente as primCliente,
           t2.IdCliente as ultCliente
    from tb_cliente_primeiro_dia as t1
    left join tb_cliente_ultimo_dia as t2
    on t1.IdCliente = t2.IdCliente
)

select count(primCliente),
       count(ultCliente),
       1. * count(ultCliente) / count(primCliente)

from tb_join;