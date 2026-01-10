-- Quantos clientes tem email cadastrado?

select sum(flEmail)

from clientes;

select count(*)

from clientes

where flEmail = 1;