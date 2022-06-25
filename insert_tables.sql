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