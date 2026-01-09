SELECT sum(qtdePontos),
       sum(CASE
            WHEN qtdePontos > 0 THEN qtdePontos
            END) AS qtdePontosPositivos,
       sum(CASE 
            WHEN qtdePontos < 0 THEN qtdePontos
            END) AS qtdePontosNegativos

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'