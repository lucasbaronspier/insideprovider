-- Função para filtrar apenas usuários que são clientes

CREATE OR REPLACE FUNCTION getClientes() RETURNS SETOF usuario AS
$body$
DECLARE
 x usuario%rowtype;
BEGIN
 	FOR x IN SELECT * FROM usuario
 	
 LOOP
 	IF (x.cod_fun is null) THEN
 		RETURN NEXT x;
 	END IF;
 END LOOP;

 RETURN;
END
$body$
LANGUAGE plpgsql;

select * from getClientes();