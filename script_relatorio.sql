--Relacionar o código, nome e
--todos os clientes que são
--pessoa física. Ordene o
--relatório de forma
--descendente pelo nome;

select cod_usu, nom_usu, cpf_cnpj_usu
from usuario u 
where length (cpf_cnpj_usu::varchar) < 13
order by nom_usu desc;


--Relacionar o nome do cliente, nome do plano e a velocidade para todos os clientes. Filtre somente clientes com planos
-- com velocidades maiores que 100MB. Ordene o relatório de forma descendente pelo nome do plano;

select u.nom_usu, p.nom_pla, p.vel_pla
	from usuario u
	inner join contrato c on u.cod_usu = c.cod_usu
	inner join plano_equipamento pe on c.cod_pla = pe.cod_pla
	inner join plano p on pe.cod_pla = p.cod_pla
	where p.vel_pla > 100
	order by p.nom_pla desc;
	
	
-- Relacionar o código do cliente, nome do cliente, quantidade total de 
-- atendimentos nos meses pares de 2022. Ordene o relatório do cliente com mais
-- atendimentos(em termos de quantidade) para o cliente com menos atendimentos;

select u.cod_usu, u.nom_usu, count(a.cod_ate)
	from usuario u
	inner join contrato c on u.cod_usu = c.cod_usu
	inner join atendimento a on c.cod_con = a.cod_con
	where mod(extract(month from a.dat_ate), 2) = 0
	group by u.cod_usu 
	order by 3 desc;
	

-- Relacionar o cpf do cliente, nome do cliente e o valor total de uso da internet. 
-- Filtrar somente clientes do sexo masculino, com idades pares
-- e que realizaram compras em meses entre 01 e 08 de 2022. Ordene o relatório do 
-- cliente com maior uso até o cliente com menor uso

select u.cpf_cnpj_usu, u.nom_usu, f.qtd_tot_dds
	from usuario u
	inner join contrato c on u.cod_usu = c.cod_usu 
	inner join fatura f on c.cod_con = f.cod_con
	where u.sex_usu = 'M' and mod(extract(year from age(u.dat_nas_usu)), 2) = 0
	and extract(month from c.dat_ini_con) > 0 and extract(month from c.dat_ini_con) < 9
	and extract(year from c.dat_ini_con) = 2022
	order by f.qtd_tot_dds desc;