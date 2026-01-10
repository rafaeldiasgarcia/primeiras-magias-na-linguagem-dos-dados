-- Qual o valor médio de pontos positivos por dia?

select sum(QtdePontos),
       -- count(substr(DtCriacao, 1, 10)) as qtdDiasRepetidos,
       count(distinct substr(DtCriacao, 1, 10)) as qtdDiasUnicos,
       sum(QtdePontos) / count(distinct substr(DtCriacao, 1, 10)) as avgPontosDia

from transacoes

where QtdePontos > 0