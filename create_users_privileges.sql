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

