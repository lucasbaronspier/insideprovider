-- Função para procurar todos os atendimentos de um usuário a partir do CPF ou CNPJ deste
	
CREATE OR REPLACE FUNCTION getUsuarioAtendimento(cpf numeric(14))
RETURNS table(cod_ate numeric, dat_ate date, obs_ate varchar) AS
$body$
BEGIN
 RETURN query select a.cod_ate, a.dat_ate, a.obs_ate from usuario u 
	inner join contrato c on u.cod_usu = c.cod_usu
	inner join atendimento a on c.cod_con = a.cod_con
	where u.cpf_cnpj_usu  = $1
	order by u.cod_usu;
END
$body$
LANGUAGE 'plpgsql';

-- Chamando a função. Alternar "X" pelo CPF ou CNPJ do usuário
select * from getusuarioatendimento(x);