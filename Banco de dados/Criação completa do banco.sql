--create database inside_provider_db;

CREATE TABLE atendimento (
  cod_ate numeric(10, 0) NOT NULL, 
  dat_ate date NOT NULL, 
  obs_ate varchar(255), 
  cod_con numeric(5, 0) NOT NULL, 
  cod_fun numeric(3, 0) NOT NULL, 
  PRIMARY KEY (cod_ate));

COMMENT ON TABLE atendimento IS 'Cadastro dos atendimentos';
COMMENT ON COLUMN atendimento.cod_ate IS 'Código do atendimento';
COMMENT ON COLUMN atendimento.dat_ate IS 'Data do atendiemento';
COMMENT ON COLUMN atendimento.obs_ate IS 'Observações do atendimento';

CREATE TABLE contrato (
  cod_con     numeric(5, 0) NOT NULL, 
  dat_ini_con date NOT NULL, 
  dat_fin_con date NOT NULL, 
  cod_usu     numeric(5, 0) NOT NULL, 
  cod_pla     numeric(2, 0) NOT NULL, 
  num_ser_eqp numeric(8, 0) NOT NULL, 
  PRIMARY KEY (cod_con));

COMMENT ON TABLE contrato IS 'Cadastro dos contratos';
COMMENT ON COLUMN contrato.cod_con IS 'Código do contrato';
COMMENT ON COLUMN contrato.dat_ini_con IS 'Data de início do contrato';
COMMENT ON COLUMN contrato.dat_fin_con IS 'Data final do contrato';

CREATE TABLE endereco (
  cod_end numeric(4, 0) NOT NULL, 
  uf_end  char(2) NOT NULL, 
  cep_end numeric(8, 0) NOT NULL, 
  bai_end varchar(40) NOT NULL, 
  rua_end varchar(80) NOT NULL, 
  num_end varchar(10) NOT NULL, 
  com_end varchar(40), 
  cod_usu numeric(5, 0) NOT NULL, 
  PRIMARY KEY (cod_end));

COMMENT ON TABLE endereco IS 'Cadastro de endereço do usuario';
COMMENT ON COLUMN endereco.cod_end IS 'Codigo do endereço';
COMMENT ON COLUMN endereco.uf_end IS 'UF do endereço';
COMMENT ON COLUMN endereco.cep_end IS 'CEP do endereço';
COMMENT ON COLUMN endereco.bai_end IS 'Bairro do endereço';
COMMENT ON COLUMN endereco.rua_end IS 'Rua do endereço';
COMMENT ON COLUMN endereco.num_end IS 'Numero da residencia do endereço';
COMMENT ON COLUMN endereco.com_end IS 'Complemento do endereço';

CREATE TABLE equipamento (
  num_ser_eqp numeric(8, 0) NOT NULL, 
  nom_equ     varchar(40) NOT NULL, 
  val_equ     numeric(19, 0), 
  dat_equ     timestamp, 
  PRIMARY KEY (num_ser_eqp));

COMMENT ON TABLE equipamento IS 'Cadastro de equipamentos';
COMMENT ON COLUMN equipamento.num_ser_eqp IS 'número de série do equipamento';
COMMENT ON COLUMN equipamento.nom_equ IS 'Nome do equipamento';
COMMENT ON COLUMN equipamento.val_equ IS 'Valor de aquisição do equipamento';
COMMENT ON COLUMN equipamento.dat_equ IS 'Data de aquisição do equipamento';

CREATE TABLE fatura (
  cod_fat     numeric(10, 0) NOT NULL, 
  dat_ven_fat date NOT NULL, 
  mes_fat     varchar(20) NOT NULL, 
  cod_con     numeric(5, 0) NOT NULL, 
  qtd_tot_dds numeric(4, 0), 
  PRIMARY KEY (cod_fat));

COMMENT ON TABLE fatura IS 'Cadastro das faturas';
COMMENT ON COLUMN fatura.cod_fat IS 'Código das faturas';
COMMENT ON COLUMN fatura.dat_ven_fat IS 'Data de vencimento da fatura';
COMMENT ON COLUMN fatura.mes_fat IS 'Mês da fatura (Ex: 02/2002)';
COMMENT ON COLUMN fatura.qtd_tot_dds IS 'valor total dos Gbs enviados e recebidos, em um mês, de determinado cliente.';

CREATE TABLE funcionario (
  cod_fun numeric(3, 0) NOT NULL, 
  car_fun varchar(40) NOT NULL, 
  set_fun numeric(2, 0) NOT NULL, 
  PRIMARY KEY (cod_fun));

COMMENT ON TABLE funcionario IS 'Cadastro de funcionario';
COMMENT ON COLUMN funcionario.car_fun IS 'Cargo do funcionario';
COMMENT ON COLUMN funcionario.set_fun IS 'Setor do funcionario';

CREATE TABLE plano (
  cod_pla numeric(2, 0) NOT NULL, 
  vel_pla numeric(4, 0) NOT NULL, 
  val_pla numeric(6, 0) NOT NULL, 
  nom_pla varchar(40) NOT NULL, 
  PRIMARY KEY (cod_pla));

COMMENT ON TABLE plano IS 'Cadastro dos planos disponiveis';
COMMENT ON COLUMN plano.cod_pla IS 'Codigo do plano';
COMMENT ON COLUMN plano.vel_pla IS 'Velocidade do Plano em Mb/s';
COMMENT ON COLUMN plano.val_pla IS 'Valor do plano';
COMMENT ON COLUMN plano.nom_pla IS 'Nome do plano';

CREATE TABLE usuario (
  cod_usu      numeric(5, 0) NOT NULL, 
  cpf_cnpj_usu numeric(14, 0) NOT NULL UNIQUE, 
  nom_usu      varchar(80) NOT NULL, 
  dat_nas_usu  date NOT NULL, 
  sex_usu      varchar(1), 
  tel_usu      numeric(18, 0), 
  cod_fun      numeric(3, 0), 
  PRIMARY KEY (cod_usu));

COMMENT ON TABLE usuario IS 'Cadastro dos usuario no sistema';
COMMENT ON COLUMN usuario.cod_usu IS 'Código do usuario';
COMMENT ON COLUMN usuario.cpf_cnpj_usu IS 'CPF ou CNPJ do usuário';
COMMENT ON COLUMN usuario.nom_usu IS 'Nome do usuario';
COMMENT ON COLUMN usuario.dat_nas_usu IS 'Data de nascimento do usuário';
COMMENT ON COLUMN usuario.sex_usu IS 'Sexo do usuario';
COMMENT ON COLUMN usuario.tel_usu IS 'numero de telefone do usuario';

-- Criação das constraints referentes as chaves estrangeiras das tabelas

ALTER TABLE contrato ADD CONSTRAINT FKcontrato628745 FOREIGN KEY (num_ser_eqp) REFERENCES equipamento (num_ser_eqp);
ALTER TABLE contrato ADD CONSTRAINT FKcontrato163469 FOREIGN KEY (cod_pla) REFERENCES plano (cod_pla);
ALTER TABLE endereco ADD CONSTRAINT FKendereco413270 FOREIGN KEY (cod_usu) REFERENCES usuario (cod_usu);
ALTER TABLE contrato ADD CONSTRAINT FKcontrato580041 FOREIGN KEY (cod_usu) REFERENCES usuario (cod_usu);
ALTER TABLE atendimento ADD CONSTRAINT FKatendiment602046 FOREIGN KEY (cod_fun) REFERENCES funcionario (cod_fun);
ALTER TABLE atendimento ADD CONSTRAINT FKatendiment732275 FOREIGN KEY (cod_con) REFERENCES contrato (cod_con);
ALTER TABLE fatura ADD CONSTRAINT FKfatura748255 FOREIGN KEY (cod_con) REFERENCES contrato (cod_con);
ALTER TABLE usuario ADD CONSTRAINT FKusuario92085 FOREIGN KEY (cod_fun) REFERENCES funcionario (cod_fun);

--Inserção da tabela funcionário
 --cod_fun (numeric 3), car_fun (varchar 40), set_fun (numeric 2)
 insert into funcionario (cod_fun, car_fun, set_fun)
 	values
 		(1, 'Suporte', 1),
 		(2, 'Supervisor suporte', 1);


--Inserção da tabela usuario
 select * from usuario;
 insert into usuario (cod_usu, cpf_cnpj_usu, nom_usu, dat_nas_usu, sex_usu, tel_usu, cod_fun)
	 values
 		(1, 27046439036, 'Ariel Valente Flores', '16/02/1973', 'M', null, null),
 		(2, 03130989056, 'Linda Amoedo Ourique', '03/02/1984', 'F', null, 2),
 		(3, 51655642901, 'Giovanni Diego da Cruz', '15/05/2002', 'M', null, 1),
 		(4, 55690009172, 'Esther Fernanda Heloisa Cardoso', '11/03/1999', 'F', null, null),
 		(5, 91591158664, 'Anthony Isaac Enrico de Paula', '24/05/1988', 'M', null, null),
 		(6, 72474273026, 'Patrícia Rafaela Martins', '26/05/2000', 'F', null, null),
 		(7, 4188860456, 'Benício Bryan Carvalho', '19/03/1994', 'M', null, null);
 		
 		insert into usuario (cod_usu, cpf_cnpj_usu, nom_usu, dat_nas_usu, sex_usu, tel_usu, cod_fun)
	 values
	 	(8, 55426726000182, 'Evelyn e Luiz Limpeza ME', '22/10/2017', null, null, null),
 		(9, 10594393000162, 'Teresinha Lavanderia Ltda', '08/08/2019', null, null, null),
 		(10, 06628951000196, 'Benício Publicidade e Propaganda Ltda', '03/08/2011', null, null, null);
 	
 	-- Inserção da tabela plano
INSERT INTO plano (cod_pla, vel_pla, val_pla, nom_pla)
VALUES
  (1,50,100,'plano básico 50MB'),
  (2,100,110,'Plano 100MB'),
  (3,150,120,'plano 150MB'),
  (4,200,130,'plano 200MB'),
  (5,300,150,'plano máximo 300MB');
 
 -- Inserção da tabela equipamento
INSERT INTO equipamento (num_ser_eqp, nom_equ, val_equ, dat_equ) 
VALUES
  (37544861,'mikrotik',150,'10/02/2022'),
  (77358738,'Fiberhome',100,'26/10/2022'),
  (66545704,'Huawei',120,'20/11/2022'),
  (53693962,'Fiberhome',100,'29/03/2022'),
  (82866207,'mikrotik',150,'3/02/2023');

-- Inserção da tabela contrato
 	select * from contrato;
 	insert into contrato (cod_con, dat_ini_con, dat_fin_con, cod_pla, cod_usu, num_ser_eqp)
 		values
 			(1, '20/02/2022', '20/02/2027', 3, 1, 37544861),
 			(2, '14/03/2022', '14/03/2027', 2, 2, 37544861),
 			(3, '18/04/2022', '18/04/2027', 3, 4, 77358738),
 			(4, '27/04/2022', '27/04/2027', 1, 5, 77358738),
 			(5, '04/05/2022', '04/05/2027', 5, 6, 66545704),
 			(6, '11/05/2022', '11/05/2027', 5, 7, 66545704),
 			(7, '18/06/2022', '18/06/2027', 1, 8, 66545704),
 			(8, '22/07/2022', '22/07/2027', 2, 9, 66545704),
 			(9, '22/09/2022', '22/09/2027', 4, 10, 66545704);
 		
	 	
 	-- Inserção da tabela fatura
 	select *  from fatura;
 	insert into fatura (cod_fat, dat_ven_fat, mes_fat,cod_con,qtd_tot_dds)
 	values 
 		(1, '05/03/2022', 'fev', 1, 162),
 		(2, '05/04/2022', 'mar', 2, 115),
 		(3, '05/05/2022', 'abr', 3, 154),
 		(4, '05/05/2022', 'abr', 4, 53),
 		(5, '05/06/2022', 'mai', 5, 293),
 		(6, '05/06/2022', 'mai', 6, 303),
 		(7, '05/07/2022', 'jun', 7, 64),
 		(8, '05/08/2022', 'jul', 8, 110),
 		(9, '05/10/2022', 'set', 9, 207);
 	
 	
 	-- Inserção da tabela atendimento
 	select * from atendimento;
 	insert into atendimento (cod_ate, dat_ate, obs_ate, cod_con, cod_fun)
 		values 
 			(1, '15/03/2022', null, 1, 1),
 			(2, '17/03/2022', null, 4, 1),
 			(3, '22/03/2022', null, 1, 1),
 			(4, '07/04/2022', null, 5, 1),
 			(5, '13/04/2022', null, 1, 1),
 			(6, '30/04/2022', null, 4, 1),
 			(7, '01/05/2022', null, 6, 1),
 			(8, '15/05/2022', null, 8, 1),
 			(9, '18/05/2022', null, 7, 1),
 			(10, '22/06/2022', null, 5, 1),
 			(11, '06/07/2022', null, 6, 1),
 			(12, '11/07/2022', null, 7, 1),
 			(13, '09/08/2022', null, 8, 1),
 			(14, '29/08/2022', null, 9, 1),
 			(15, '15/09/2022', null, 1, 1);

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

-- Criação das roles
create role comercial;
create role suporte;
create role financeiro;
create role administrador;

-- Atribuindo permissoes para Comercial
grant select,insert,update on endereco,usuario,contrato to comercial with grant option;
grant select on atendimento, fatura, plano to comercial with grant option;


-- Atribuindo permissoes para Suporte
grant select, update on endereco, usuario to suporte with grant option;
grant select on atendimento, contrato, fatura, plano to suporte with grant option;

-- Atribuindo permissoes para Financeiro
grant select, insert, update on fatura to financeiro with grant option;
grant select on endereco, usuario, funcionario, atendimento, contrato, plano to financeiro with grant option;

-- Atribuindo permissoes para Administrador
grant select, delete, insert, update on endereco, usuario, funcionario, atendimento, contrato, fatura, plano to administrador;

-- Criando acessos para os usuarios do sistema
create role joao password '111' in role comercial;
create role lucas password '222' in role suporte;
create role jonas password '333' in role financeiro;
create role wiliam password '444' in role administrador;

-- Atribuindo permissão para logar com o usuario
alter role joao LOGIN;
alter role lucas LOGIN;
alter role jonas LOGIN;
alter role wiliam LOGIN;

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

-- Criação da trigger
create or replace trigger contrato_auditoria_trigger
	after insert or delete on contrato
	for each row
	execute procedure contrato_auditoria_function();
	


CREATE FUNCTION verificaFatura() RETURNS trigger
AS $$
    BEGIN
        
        IF NEW.cod_fat EXISTS THEN
            RAISE EXCEPTION 'Codigo Da Fatura Ja Existe';
        END IF;
        IF NEW.qtd_tot_dds is NULL THEN
            RAISE EXCEPTION 'Quantidade nao pode ser nula';
        END IF;
        IF NEW.qtd_tot_dds < 1 THEN
            RAISE EXCEPTION 'Nao e possivel faturar clientes sem consumo de banda';
        END IF;
       
    END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER verificaFatura BEFORE INSERT OR UPDATE ON fatura
    FOR EACH ROW EXECUTE FUNCTION verificaFatura();


