create database inside_provider_db;

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
  cod_pla     numeric(2, 0) NOT NULL, 
  num_ser_eqp numeric(8, 0) NOT NULL, 
  cpf_usu     numeric(5, 0) NOT NULL, 
  PRIMARY KEY (cod_con));

COMMENT ON TABLE contrato IS 'Cadastro dos contratos';
COMMENT ON COLUMN contrato.cod_con IS 'Código do contrato';
COMMENT ON COLUMN contrato.dat_ini_con IS 'Data de início do contrato';
COMMENT ON COLUMN contrato.dat_fin_con IS 'Data final do contrato';
COMMENT ON COLUMN contrato.num_ser_eqp IS 'número de série equipamento';

CREATE TABLE endereco (
  cod_end numeric(4, 0) NOT NULL, 
  uf_end  char(2) NOT NULL, 
  cep_end numeric(8, 0) NOT NULL, 
  bai_end varchar(40) NOT NULL, 
  rua_end varchar(80) NOT NULL, 
  num_end varchar(10) NOT NULL, 
  com_end varchar(40), 
  cpf_usu numeric(5, 0) NOT NULL, 
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
  qtd_equ     numeric(4, 0) NOT NULL, 
  val_equ     numeric(19, 0), 
  dat_equ     timestamp, 
  PRIMARY KEY (num_ser_eqp));

COMMENT ON TABLE equipamento IS 'Cadastro de equipamentos';
COMMENT ON COLUMN equipamento.num_ser_eqp IS 'número de série do equipamento';
COMMENT ON COLUMN equipamento.nom_equ IS 'Nome do equipamento';
COMMENT ON COLUMN equipamento.qtd_equ IS 'Quantidade de equipamentos';
COMMENT ON COLUMN equipamento.val_equ IS 'Valor de aquisição do equipamento';
COMMENT ON COLUMN equipamento.dat_equ IS 'Data de aquisição do equipamento';

CREATE TABLE fatura (
  cod_fat     numeric(10, 0) NOT NULL, 
  dat_ven_fat date NOT NULL, 
  mes_fat     char(7) NOT NULL, 
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

CREATE TABLE plano_equipamento (
  cod_pla     numeric(2, 0) NOT NULL, 
  num_ser_eqp numeric(8, 0) NOT NULL, 
  PRIMARY KEY (cod_pla, 
  num_ser_eqp));

COMMENT ON COLUMN plano_equipamento.num_ser_eqp IS 'número de série do equipamento';

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
COMMENT ON COLUMN usuario.cod_usu IS 'CPF do usuario';
COMMENT ON COLUMN usuario.cpf_cnpj_usu IS 'CPF ou CNPJ do usuário';
COMMENT ON COLUMN usuario.nom_usu IS 'Nome do usuario';
COMMENT ON COLUMN usuario.dat_nas_usu IS 'Data de nascimento do usuário';
COMMENT ON COLUMN usuario.sex_usu IS 'Sexo do usuario';
COMMENT ON COLUMN usuario.tel_usu IS 'numero de telefone do usuario';

ALTER TABLE atendimento ADD CONSTRAINT FKatendiment602046 FOREIGN KEY (cod_fun) REFERENCES funcionario (cod_fun);
ALTER TABLE atendimento ADD CONSTRAINT FKatendiment732275 FOREIGN KEY (cod_con) REFERENCES contrato (cod_con);
ALTER TABLE endereco ADD CONSTRAINT FKendereco937046 FOREIGN KEY (cpf_usu) REFERENCES usuario (cod_usu);
ALTER TABLE contrato ADD CONSTRAINT FKcontrato56265 FOREIGN KEY (cpf_usu) REFERENCES usuario (cod_usu);
ALTER TABLE fatura ADD CONSTRAINT FKfatura748255 FOREIGN KEY (cod_con) REFERENCES contrato (cod_con);
ALTER TABLE contrato ADD CONSTRAINT FKcontrato462101 FOREIGN KEY (cod_pla, num_ser_eqp) REFERENCES plano_equipamento (cod_pla, num_ser_eqp);
ALTER TABLE usuario ADD CONSTRAINT FKusuario92085 FOREIGN KEY (cod_fun) REFERENCES funcionario (cod_fun);
ALTER TABLE plano_equipamento ADD CONSTRAINT FKplano_equi913211 FOREIGN KEY (num_ser_eqp) REFERENCES equipamento (num_ser_eqp);
ALTER TABLE plano_equipamento ADD CONSTRAINT FKplano_equi621511 FOREIGN KEY (cod_pla) REFERENCES plano (cod_pla);

INSERT INTO plano (cod_pla, vel_pla, val_pla, nom_pla)

VALUES

  (1,50,100,'plano básico 50MB'),

  (2,100,110,'Plano 100MB'),

  (3,150,120,'plano 150MB'),

  (4,200,130,'plano 200MB'),

  (5,300,150,'plano máximo 300MB');
 
INSERT INTO equipamento (num_ser_eqp, nom_equ, qtd_equ,val_equ ,dat_equ)
 
VALUES

  (37544861,'mikrotik',1,150,'10/02/2022'),

  (77358738,'Fiberhome',1,100,'26/10/2022'),

  (66545704,'Huawei',1,120,'20/11/2022'),

  (53693962,'Fiberhome',1,100,'29/03/2022'),

  (82866207,'mikrotik',1,150,'3/02/2023');



