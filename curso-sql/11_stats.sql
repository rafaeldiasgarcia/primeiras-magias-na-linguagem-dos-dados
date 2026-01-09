-- avg calcula a média
SELECT round(avg(qtdePontos),2) AS mediaCarteira,
       1. * sum(qtdePontos) / count(idCliente) AS mediaCarteiraRoots,
       min(qtdePontos) AS minCareira,
       max(qtdePontos) AS maxCarteira

FROM clientes