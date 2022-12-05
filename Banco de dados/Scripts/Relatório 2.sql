-- Script para criação de view, a partir do segundo relatório solicitado.

/* SEGUNDO RELATÓRIO
Relacionar o nome do cliente, nome do plano e a velocidade para todos os clientes.
Filtre somente clientes com planos com velocidades maiores que 100MB.
Ordene o relatório de forma descendente pelo nome do plano.
*/

create or replace view vw_relatorio2 as
select u.nom_usu "Nome do usuário", p.nom_pla "Nome do plano", p.vel_pla "Velocidade do plano"
	from usuario u
	inner join contrato c on u.cod_usu = c.cod_usu
	inner join plano p on c.cod_pla = p.cod_pla
	where p.vel_pla > 100
	order by p.nom_pla desc;
	
select * from vw_relatorio2;