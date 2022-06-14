--Relacionar o código, nome e
--todos os clientes que são
--pessoa física. Ordene o
--relatório de forma
--descendente pelo nome;

select cod_usu, nom_usu, cpf_cnpj_usu
from usuario u 
where length (cpf_cnpj_usu::varchar) < 13
order by nom_usu desc;