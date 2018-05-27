-- STORE PROCEDURE CREAR_VUELO
create or replace procedure crear_vuelo(origen_p in varchar2, destino_p in varchar2, capacidad_p in NUMBER, fpartida_p in varchar2, fllegada_p in varchar2, precio_unitario_p in number) as
begin
insert into vuelos(origen_vuelo, destino_vuelo, capacidad_vuelo, fecha_partida, fecha_llegada, precio_unitario)
values (origen_p, destino_p, capacidad_p, to_date(fpartida_p, 'dd-mm-yyyy hh24:mi:ss'), to_date(fllegada_p, 'dd-mm-yyyy hh24:mi:ss'), precio_unitario_p);
end;
/
/*
exec crear_vuelo('Guatemala', 'Cota Rica', 30, to_date('10-10-2018 12:12:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-10-2018 18:12:12', 'dd-mm-yyyy hh24:mi:ss'), 45.25);
select * from vuelos;
*/

-- STORE PROCEDURE CREAR_CLIENTE
create or replace procedure crear_cliente(nombre_p in varchar2, apellido_p in varchar2, email_p in varchar2, nacionalidad_p in varchar2) as
begin
    insert into clientes (nombre_cliente, apellido_cliente, email_cliente, nacionalidad)
    values (nombre_p, apellido_p, email_p, nacionalidad_p);   
end;
/
/*
exec crear_cliente('Fam', 'casdf', 'asfasdf@gmail.com', 'guatemalteca');
select * from clientes;
*/

-- STORE PROCEDURE CREAR VIAJE
create or replace procedure crear_viaje(id_viaje_p in number, origen_p in varchar2, destino_p in varchar2) as
begin
    insert into viajes(id_viaje, origen_viaje, destino_viaje)
    values (id_viaje_p, origen_p, destino_p);
end;
/
/*
exec crear_viaje(1, 'Guatemala', 'Puerto Rico');
select * from viajes;
*/

-- STORE PROCEDURE CREAR_BOLETO
create or replace procedure crear_boleto(id_viaje_p in number, id_vuelo_p in number, id_cliente_p in number) as
begin
    insert into boletos_comprados (id_viaje, id_vuelo, id_cliente, id_agencia_viaje)
    values (id_viaje_p, id_vuelo_p, id_cliente_p, 1);
    aumentar_boletos_comprados(id_vuelo_p);
end;
/
/*
exec crear_boleto(1, 5, 200);
select * from boletos_comprados;
select * from vuelos;
*/

-- STORE PROCEDURE CREAR BOLETO AGENCIA UNO
create or replace procedure crear_boleto_agencia_uno(id_vuelo_p in number, id_cliente_p in number) as
begin
    insert into boletos_comprados (id_viaje, id_vuelo, id_cliente, id_agencia_viaje)
    values (1, id_vuelo_p, id_cliente_p, 2);
    aumentar_boletos_comprados(id_vuelo_p);
end;
/

-- PROCEDURE AUMENTAR_BOLETOS_COMPRADOS
create or replace procedure aumentar_boletos_comprados(id_vuelo_param in int) as
begin
    update vuelos set boletos_comprados=((select boletos_comprados from vuelos where id_vuelo=id_vuelo_param)+1) where id_vuelo=id_vuelo_param;
end;
/
/*
exec aumentar_boletos_comprados(1);
select * from vuelos;
select count(boletos_comprados) from vuelos;
*/

-- PROCEDURE CANCELAR BOLETO
create or replace procedure cancelar_boleto(id_boleto_comprado_p in number) as
id_vuelo_param number;
begin
    UPDATE boletos_comprados SET FECHA_BOLETO_CANCELADO=sysdate, boleto_cancelado=1 WHERE id_boleto_comprado=id_boleto_comprado_p;
    select id_vuelo into id_vuelo_param from boletos_comprados where id_boleto_comprado=id_boleto_comprado_p;
    disminuir_boletos_comprados(id_vuelo_param);
end;
/
/*
exec cancelar_boleto(21);
select * from vuelos;
select * from boletos_comprados;
*/

-- PROCEDURE AUMENTAR_BOLETOS_COMPRADOS
create or replace procedure disminuir_boletos_comprados(id_vuelo_param in number) as
begin
    update vuelos set boletos_comprados=(select boletos_comprados from vuelos where id_vuelo=id_vuelo_param)-1 where id_vuelo=id_vuelo_param;
end;
/
/*
exec disminuir_boletos_comprados(5);
select * from vuelos;
select count(boletos_comprados) from vuelos;
*/

-- PROCEDURE CREAR_AGENCIA_VIAJE
create or replace procedure crear_agencia_viaje(nombre_agencia_p in varchar2, email_agencia_p in varchar2) as
begin
    insert into agencias_viajes(nombre_agencia, email_agencia) 
    values (nombre_agencia_p, email_agencia_p);
end;
/
/*
exec crear_agencia_viaje('agenciaDos', 'e-emilio@hotmail.com');
select * from agencias_viajes;
*/

-- AUN NO FUNCIONA ESTA FUNCIÓN
-- FUNCTION BUSCAR_VUELO
/*
create or replace function buscar_vuelo(origen_vuelo_p in varchar2, destino_vuelo_p in varchar2, fp_p in varchar2, fll_p in varchar2)
    return sys_refcursor
is
    my_cursor sys_refcursor;
begin
    open my_cursor for
    select * from vuelos where origen_vuelo=origen_vuelo_p and
                                destino_vuelo=destino_vuelo_p;
    return my_cursor;
end;
/
select buscar_vuelo('Guatemala', 'Alemania') from vuelos;
select * from vuelos;

select * from vuelos where trunc(fecha_partida)=to_date('17-10-2017', 'dd-mm-yyyy');
*/