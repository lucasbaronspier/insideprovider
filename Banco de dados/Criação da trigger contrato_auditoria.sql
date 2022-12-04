-- Criação da trigger para auditoria da tabela contrato


-- Criando a tabela auditoria de contrato
create table contrato_auditoria (
	cod_con numeric(5) not null,
	dat_ini_con date not null,
	dat_fin_con date not null,
	cod_usu numeric (5) not null,
	cod_pla numeric (2) not null,
	num_ser_eqp numeric (8) not null,
	dat_alt Date not null
);

-- Criação da trigger
create or replace trigger contrato_auditoria_trigger
	after insert or delete on contrato
	for each row
	execute procedure contrato_auditoria_function();
	
-- Criação da procedure
create or replace function contrato_auditoria_function ()
	returns trigger as
		$$
			begin 
				insert into contrato_auditoria 
				(cod_con, dat_ini_con, dat_fin_con, cod_usu, cod_pla, num_ser_eqp, dat_alt)
					values (new.cod_con, new.dat_ini_con, new.dat_fin_con, new.cod_usu, new.cod_pla, new.num_ser_eqp, current_date);
				return new;
			end
		$$
	language plpgsql;