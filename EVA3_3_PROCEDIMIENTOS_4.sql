delimiter //
create procedure agregar_actor(in actorid int, in frame varchar(50), in Iname varchar(50))
begin
	insert into actor(actor_id, first_name, last_name)
    values(actorid, frame, Iname);
end//
delimiter ;