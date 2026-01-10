-- Qual dia da semana tem mais pedidos em 2025?

select STRFTIME('%w', substr(DtCriacao, 1, 10)) as diaSemana,
       count(distinct IdTransacao) as qtdTransacao

from transacoes

where substr(DtCriacao, 1, 4) = '2025'

group by 1

order by 2 desc

limit 1