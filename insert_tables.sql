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

-- Inserção da tabela contrato
 	select * from contrato;
 	insert into contrato (cod_con, dat_ini_con, dat_fin_con, cod_pla, cod_usu)
 		values
 			(1, '20/02/2022', '20/02/2027', 3, 1),
 			(2, '14/03/2022', '14/03/2027', 2, 2),
 			(3, '18/04/2022', '18/04/2027', 3, 4),
 			(4, '27/04/2022', '27/04/2027', 1, 5),
 			(5, '04/05/2022', '04/05/2027', 5, 6),
 			(6, '11/05/2022', '11/05/2027', 5, 7),
 			(7, '18/06/2022', '18/06/2027', 1, 8),
 			(8, '22/07/2022', '22/07/2027', 2, 9),
 			(9, '22/09/2022', '22/09/2027', 4, 10);


-- Inserção da tabela plano
INSERT INTO plano (cod_pla, vel_pla, val_pla, nom_pla, cod_con)
VALUES
  (1,50,100,'plano básico 50MB'),
  (2,100,110,'Plano 100MB'),
  (3,150,120,'plano 150MB'),
  (4,200,130,'plano 200MB'),
  (5,300,150,'plano máximo 300MB');

 -- Inserção da tabela equipamento
INSERT INTO equipamento (num_ser_eqp, nom_equ, val_equ, dat_equ, cod_con) 
VALUES
  (37544861,'mikrotik',150,'10/02/2022', 1),
  (77358738,'Fiberhome',100,'26/10/2022', 3),
  (66545704,'Huawei',120,'20/11/2022', 5),
  (53693962,'Fiberhome',100,'29/03/2022', 7),
  (82866207,'mikrotik',150,'3/02/2023', 9);
 
 	
 	-- Inserção da tabela plano_equipamento
 	select * from plano_equipamento;
 	insert into plano_equipamento (cod_pla, num_ser_eqp)
 		values
 			(1, 77358738),
 			(2, 53693962),
 			(3, 66545704),
 			(4, 37544861),
 			(5, 82866207);
	 	

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