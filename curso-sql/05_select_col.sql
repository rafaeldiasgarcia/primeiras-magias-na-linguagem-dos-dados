SELECT idCliente,

        QtdePontos,

        QtdePontos + 10 AS qtdePontosPlus10,

        QtdePontos * 2 AS qtdePontosDouble,
        
        DtCriacao,

        -- cria uma subtring do caracter 1 ao 19, e da um nome novo
        substr(DtCriacao, 1, 19) AS dtSubstring,

        -- alem de criar a substring passa isso para o tipo data
        datetime(substr(DtCriacao, 1, 19)) AS DtCriacaoNova,

        -- repete os passos anterios mas mostra o dia da semana que ocorreu
        strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS diaSemana

FROM clientes