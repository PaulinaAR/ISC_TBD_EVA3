create function regresa_uno()
returns int deterministic
return 1;

create function regresa_mensaje(cade varchar(50))
returns varchar(100) deterministic
return concat(" hola",cade);

delimiter $$
create function contar_actor()
returns int reads sql data 
begin
	declare cont int;
    select count(*) into cont from actor;
    return cont;
    end $$
delimiter ;

/*Clic derecho en cualquier función -> send to sql editor -> Create statement */
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `regresa_mensaje`(cade varchar(50)) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
return concat("hola",cade)$$
DELIMITER ;