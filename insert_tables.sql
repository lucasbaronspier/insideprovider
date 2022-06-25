-- Inserção da tabela plano
INSERT INTO plano (cod_pla, vel_pla, val_pla, nom_pla)
VALUES
  (1,50,100,'plano básico 50MB'),
  (2,100,110,'Plano 100MB'),
  (3,150,120,'plano 150MB'),
  (4,200,130,'plano 200MB'),
  (5,300,150,'plano máximo 300MB');

 -- Inserção da tabela equipamento
INSERT INTO equipamento (num_ser_eqp, nom_equ, qtd_equ,val_equ ,dat_equ) 
VALUES
  (37544861,'mikrotik',1,150,'10/02/2022'),
  (77358738,'Fiberhome',1,100,'26/10/2022'),
  (66545704,'Huawei',1,120,'20/11/2022'),
  (53693962,'Fiberhome',1,100,'29/03/2022'),
  (82866207,'mikrotik',1,150,'3/02/2023');
 
 --Inserção da tabela funcionário
 --cod_fun (numeric 3), car_fun (varchar 40), set_fun (numeric 2)
 select*from funcionario;
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
 		(7, 54188860456, 'Benício Bryan Carvalho', '19/03/1994', 'M', null, null),
 		(8, 55426726000182, 'Evelyn e Luiz Limpeza ME', '22/10/2017', null, null),
 		(9, 10594393000162, 'Teresinha Lavanderia Ltda', '08/08/2019', null, null),
 		(10, 06628951000196, 'Benício Publicidade e Propaganda Ltda', '03/08/2011', null, null);