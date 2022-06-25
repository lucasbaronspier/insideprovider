-- Criação das constraints referentes as chaves estrangeiras das tabelas

ALTER TABLE atendimento ADD CONSTRAINT FKatendiment602046 FOREIGN KEY (cod_fun) REFERENCES funcionario (cod_fun);
ALTER TABLE atendimento ADD CONSTRAINT FKatendiment732275 FOREIGN KEY (cod_con) REFERENCES contrato (cod_con);
ALTER TABLE endereco ADD CONSTRAINT FKendereco937046 FOREIGN KEY (cod_usu) REFERENCES usuario (cod_usu);
ALTER TABLE contrato ADD CONSTRAINT FKcontrato56265 FOREIGN KEY (cod_usu) REFERENCES usuario (cod_usu);
ALTER TABLE fatura ADD CONSTRAINT FKfatura748255 FOREIGN KEY (cod_con) REFERENCES contrato (cod_con);
ALTER TABLE contrato ADD CONSTRAINT FKcontrato462101 FOREIGN KEY (cod_pla, num_ser_eqp) REFERENCES plano_equipamento (cod_pla, num_ser_eqp);
ALTER TABLE usuario ADD CONSTRAINT FKusuario92085 FOREIGN KEY (cod_fun) REFERENCES funcionario (cod_fun);
ALTER TABLE plano_equipamento ADD CONSTRAINT FKplano_equi913211 FOREIGN KEY (num_ser_eqp) REFERENCES equipamento (num_ser_eqp);
ALTER TABLE plano_equipamento ADD CONSTRAINT FKplano_equi621511 FOREIGN KEY (cod_pla) REFERENCES plano (cod_pla);
