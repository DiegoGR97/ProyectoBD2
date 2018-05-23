create or replace procedure SP_CrearUsuario(username in varchar2, password in varchar2) as
begin
    insert into USUARIOS_AGENCIA (usuario_agencia, contra_agencia)
    values (username, password);   
end;