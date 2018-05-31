-- TABLES CODE WITH AUTO_INCREMENT

--TABLE AGENCIAS_VIAJES
drop table agencias_viajes;
create table agencias_viajes 
(
    id_agencia_viaje number(11) not null,
    nombre_agencia varchar2(50),
    email_agencia varchar2(50),
    constraint agencias_viajes_pk 
        PRIMARY KEY (id_agencia_viaje)
);

drop sequence agencias_viajes_seq;
create sequence agencias_viajes_seq START WITH 1;

drop trigger agencias_viajes_bi_ai;
create or replace trigger agencias_viajes_bi_ai
before insert on agencias_viajes
for each row
begin
    select agencias_viajes_seq.NEXTVAL
    into :new.id_agencia_viaje
    from dual;
end;
/   

--TABLE VUELOS
drop table vuelos;
create table vuelos 
(
    id_vuelo number(11) not null,
    origen_vuelo varchar2(50),
    destino_vuelo varchar2(50),
    capacidad_vuelo number(11),
    boletos_comprados number(11) default 0,
    fecha_partida date,
    fecha_llegada date,
    precio_unitario number(11,2),
    constraint vuelos_pk 
        primary key (id_vuelo)
);

drop sequence vuelos_seq;
create sequence vuelos_seq START WITH 5;

drop trigger vuelos_bi_ai;
create or replace trigger vuelos_bi_ai
before insert on vuelos
for each row
begin
    select vuelos_seq.NEXTVAL
    into :new.id_vuelo
    from dual;
end;

/

-- TABLE CLIENTES
drop table clientes;
create table clientes 
(
    id_cliente number(11) not null,
    nombre_cliente varchar2(50),
    apellido_cliente varchar2(50),
    email_cliente varchar2(50),
    nacionalidad varchar2(50),
    constraint clientes_pk 
        primary key (id_cliente)
);

drop sequence clientes_seq;
create sequence clientes_seq START WITH 1;

drop trigger clientes_bi_ai;
create or replace trigger clientes_bi_ai
before insert on clientes
for each row
begin
    select clientes_seq.NEXTVAL
    into :new.id_cliente
    from dual;
end;
/

-- TABLE DATOS_AEROLINEA
drop table datos_aerolinea;
create table datos_aerolinea 
(
    id_datos_aerolinea number(11) not null,
    nombre_aerolinea varchar2(50),
    constraint datos_aerolinea_pk 
        primary key (id_datos_aerolinea)
);
/

-- TABLE VIAJES
drop table viajes;
create table viajes
(
    id_viaje number(11) not null,
    id_agencia_viaje number(11) not null,
    origen_viaje varchar2(50),
    destino_viaje varchar2(50),
    precio_total number(11,2) default 0,
    constraint viaje_pk 
        primary key (id_viaje)
);
/
/*
drop sequence viajes_seq;
create sequence viajes_seq start with 1;

drop trigger viajes_bi_ai;
create or replace trigger viajes_bi_ai
before insert on viajes
for each row
begin
    select viajes_seq.NEXTVAL
    into :new.id_viaje
    from dual;
end;
/
*/
--  TABLE BOLETOS_COMPRADOS
drop table boletos_comprados;
create table boletos_comprados
(
    id_boleto_comprado number(11) not null,
    id_viaje number(11) not null,
    id_agencia_viaje number(11) not null,
    id_vuelo number(11) not null,
    id_cliente number(11) not null,
    boleto_cancelado number(1) default 0 not null,
    fecha_compra_boleto date default sysdate,
    fecha_boleto_cancelado date default null,
    constraint boletos_comprados_pk 
        primary key (id_boleto_comprado),
    constraint fk_id_viaje 
        foreign key (id_viaje) 
        references viajes (id_viaje),
    constraint fk_id_vuelo 
        foreign key (id_vuelo) 
        references vuelos (id_vuelo),
    constraint fk_id_cliente 
        foreign key (id_cliente)
        references clientes (id_cliente),
    constraint fk_id_agencia_viaje
        foreign key (id_agencia_viaje)
        references agencias_viajes (id_agencia_viaje)
);

drop sequence boletos_comprados_seq;
create sequence boletos_comprados_seq start with 500;

drop trigger boletos_comprados_bi_ai;
create or replace trigger boletos_comprados_bi_ai
before insert on boletos_comprados
for each row
begin
    select boletos_comprados_seq.NEXTVAL
    into :new.id_boleto_comprado
    from dual;
end;
/

