-- Quantos produtos são de rpg?

select count(DescCategoriaProduto)

from produtos

where DescCategoriaProduto = 'rpg';



select DescCategoriaProduto,
       count(*)
from produtos

group by DescCategoriaProduto

