--Relacionar o c�digo, nome e
--todos os clientes que s�o
--pessoa f�sica. Ordene o
--relat�rio de forma
--descendente pelo nome;

select cod_usu, nom_usu, cpf_cnpj_usu
from usuario u 
where length (cpf_cnpj_usu::varchar) < 13
order by nom_usu desc;