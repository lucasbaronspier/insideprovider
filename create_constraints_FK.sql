-- Criação das constraints referentes as chaves estrangeiras das tabelas

ALTER TABLE contrato ADD CONSTRAINT FKcontrato200787 FOREIGN KEY (cod_pla2) REFERENCES plano (cod_pla);
ALTER TABLE equipamento ADD CONSTRAINT FKequipament429601 FOREIGN KEY (cod_con) REFERENCES contrato (cod_con);
ALTER TABLE endereco ADD CONSTRAINT FKendereco413270 FOREIGN KEY (cod_usu) REFERENCES usuario (cod_usu);
ALTER TABLE contrato ADD CONSTRAINT FKcontrato580041 FOREIGN KEY (cod_usu) REFERENCES usuario (cod_usu);
ALTER TABLE atendimento ADD CONSTRAINT FKatendiment602046 FOREIGN KEY (cod_fun) REFERENCES funcionario (cod_fun);
ALTER TABLE atendimento ADD CONSTRAINT FKatendiment732275 FOREIGN KEY (cod_con) REFERENCES contrato (cod_con);
ALTER TABLE fatura ADD CONSTRAINT FKfatura748255 FOREIGN KEY (cod_con) REFERENCES contrato (cod_con);
ALTER TABLE usuario ADD CONSTRAINT FKusuario92085 FOREIGN KEY (cod_fun) REFERENCES funcionario (cod_fun);