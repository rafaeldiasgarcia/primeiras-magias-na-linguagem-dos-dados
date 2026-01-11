-- Lista de transações com o produto "Resgatar Ponei"

select *

from transacao_produto as t1

where t1.IdProduto in (
    select IdProduto

    from produtos

    where DescDescricaoProduto = 'Resgatar Ponei'
    )