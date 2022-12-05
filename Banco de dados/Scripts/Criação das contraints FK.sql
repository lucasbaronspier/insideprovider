-- Criação das constraints referentes as chaves estrangeiras das tabelas

ALTER TABLE contrato ADD CONSTRAINT FKcontrato628745 FOREIGN KEY (num_ser_eqp) REFERENCES equipamento (num_ser_eqp);
ALTER TABLE contrato ADD CONSTRAINT FKcontrato163469 FOREIGN KEY (cod_pla) REFERENCES plano (cod_pla);
ALTER TABLE endereco ADD CONSTRAINT FKendereco413270 FOREIGN KEY (cod_usu) REFERENCES usuario (cod_usu);
ALTER TABLE contrato ADD CONSTRAINT FKcontrato580041 FOREIGN KEY (cod_usu) REFERENCES usuario (cod_usu);
ALTER TABLE atendimento ADD CONSTRAINT FKatendiment602046 FOREIGN KEY (cod_fun) REFERENCES funcionario (cod_fun);
ALTER TABLE atendimento ADD CONSTRAINT FKatendiment732275 FOREIGN KEY (cod_con) REFERENCES contrato (cod_con);
ALTER TABLE fatura ADD CONSTRAINT FKfatura748255 FOREIGN KEY (cod_con) REFERENCES contrato (cod_con);
ALTER TABLE usuario ADD CONSTRAINT FKusuario92085 FOREIGN KEY (cod_fun) REFERENCES funcionario (cod_fun);