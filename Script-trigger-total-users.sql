--select count(*) from auth.users u ;

drop trigger if exists insere_usuario_check on auth.users;
drop function if exists auth.checa_total_users;

CREATE FUNCTION auth.checa_total_users()
  RETURNS trigger AS
$func$
BEGIN
   IF (select count(*) from auth.users u) >= 5 THEN
      RAISE EXCEPTION 'Número total de usuários atingido';
   END IF;
   RETURN NEW;
END
$func$  LANGUAGE plpgsql;


CREATE TRIGGER insere_usuario_check
BEFORE INSERT ON auth.users 
FOR EACH ROW EXECUTE PROCEDURE auth.checa_total_users();



