-- Lista de pedidos realizados no fim de semana;

SELECT IdTransacao,
       strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS diaSemana

FROM transacoes

where diaSemana IN ('0', '6')
