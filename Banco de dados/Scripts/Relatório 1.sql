-- Script para criação de view, a partir do primeiro relatório solicitado.

/* PRIMEIRO RELATÓRIO
Relacionar o código, nome e todos os clientes que são pessoa física. 
Ordene o relatório de forma descendente pelo nome.
*/

create or replace view vw_relatorio1 as
select cod_usu "Código do usuário", nom_usu "Nome do usuário", cpf_cnpj_usu "CPF do usuário"
from usuario u 
where length (cpf_cnpj_usu::varchar) < 13
order by nom_usu desc;

select * from vw_relatorio1;
