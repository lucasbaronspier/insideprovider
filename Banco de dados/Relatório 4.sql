-- Script para criação de view, a partir do quarto relatório solicitado.

/* QUARTO RELATÓRIO
Relacionar o cpf do cliente, nome do cliente e o valor total de uso da internet. 
Filtrar somente clientes do sexo masculino, com idades pares e que realizaram compras em 
meses entre 01 e 08 de 2022. Ordene o relatório do cliente com maior uso até o cliente com menor uso.
*/

create or replace view vw_relatorio4 as
select u.cpf_cnpj_usu "CPF do usuário", u.nom_usu "Nome do usuário", f.qtd_tot_dds "Quantidade de dados"
	from usuario u
	inner join contrato c on u.cod_usu = c.cod_usu 
	inner join fatura f on c.cod_con = f.cod_con
	where u.sex_usu = 'M' and mod(extract(year from age(u.dat_nas_usu)), 2) = 0
	and extract(month from c.dat_ini_con) > 0 and extract(month from c.dat_ini_con) < 9
	and extract(year from c.dat_ini_con) = 2022
	order by f.qtd_tot_dds desc;
	
select * from vw_relatorio4;