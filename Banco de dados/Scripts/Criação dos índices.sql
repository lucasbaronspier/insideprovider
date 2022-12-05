-- Criação dos índices nas chaves estrangeiras

create index "con-num_ser_eqp-sk" 
	on contrato(num_ser_eqp);
	
create index "con-cod_pla-sk"
	on contrato(cod_pla);
	
create index "end-cod_usu-sk"
	on endereco(cod_usu);
	
create index "con-cod_usu-sk"
	on contrato(cod_usu);
	
create index "ate-cod_fun-sk"
	on atendimento(cod_fun);

create index "ate-cod_con-sk"
	on atendimento(cod_con);
		
create index "fat-cod_con-sk"
	on fatura(cod_con);
	
create index "usu-cod_fun-sk"
	on usuario(cod_fun);
	

-- Criação dos índices nas colunas mais utilizadas

create index "usu-cpf_cnpj_usu-sk"
	on usuario(cpf_cnpj_usu);

create index "usu-tel_usu-sk"
	on usuario(tel_usu);

create index "ate-obs_ate-sk"
	on atendimento(obs_ate);

create index "equ-nom_equ-sk"
	on equipamento(nom_equ);

create index "pla-vel_pla-sk"
	on plano(vel_pla);