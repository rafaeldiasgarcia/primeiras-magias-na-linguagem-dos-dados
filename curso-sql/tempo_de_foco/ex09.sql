-- Listar todas as transações adicionando uma coluna nova 
-- sinalizando “alto”, “médio” e “baixo” para o valor dos pontos 
-- [<10 ; <500; >=500]

SELECT IdTransacao,
        IdCliente,
        CASE
            WHEN QtdePontos < 10 THEN 'baixo'
            WHEN QtdePontos < 500 THEN 'médio'
            ELSE 'alto'
        END AS FaixaPontos
 
FROM transacoes

ORDER BY FaixaPontos DESC