-- Script para criação de view, a partir do terceiro relatório solicitado.

/* TERCEIRO RELATÓRIO
Relacionar o código do cliente, nome do cliente, quantidade total de 
atendimentos nos meses pares de 2022. Ordene o relatório do cliente com mais
atendimentos(em termos de quantidade) para o cliente com menos atendimentos.
*/

create or replace view vw_relatorio3 as
select u.cod_usu "Código do usuário", u.nom_usu "Nome do usuário", count(a.cod_ate) "Quantidade de atendimentos"
	from usuario u
	inner join contrato c on u.cod_usu = c.cod_usu
	inner join atendimento a on c.cod_con = a.cod_con
	where mod(extract(month from a.dat_ate), 2) = 0
	group by u.cod_usu 
	order by 3 desc;
	
select * from vw_relatorio3;