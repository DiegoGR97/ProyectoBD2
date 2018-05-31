-- INSERTS ON AGENCIAS_VIAJES
select * from AGENCIAS_VIAJES;
insert into agencias_viajes (nombre_agencia, email_agencia)
values ('agenciaUno', 'e-emilio@hotmail.com');

-- INSERTS ON VUELOS
select * from vuelos;
insert into vuelos 
(origen_vuelo, destino_vuelo, capacidad_vuelo, fecha_partida, fecha_llegada, precio_unitario)
values ('Guatemala', 'Canada', 10, to_date('15-10-2018 15:45:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-10-2018 15:45:10', 'dd-mm-yyyy hh24:mi:ss'), 18.25);

-- INSERTS ON CLIENTES
select * from clientes;
insert into clientes
(nombre_cliente, apellido_cliente, email_cliente, nacionalidad)
values ('pancho', 'sanchez', 'email@domain.com', 'guatemalteca');

-- INSERTS ON AEROLINEA
select * from datos_aerolinea; 
insert into datos_aerolinea 
(id_datos_aerolinea, nombre_aerolinea)
values (1, 'aerolinea super');

-- INSERTS ON VIAJES
select * from viajes;
insert into viajes
(origen_viaje, destino_viaje) 
values ('Guatemala', 'Alemania');

-- INSERTS ON BOLETOS_COMPRADOS
select * from boletos_comprados;
select * from viajes;
select * from vuelos;
insert into boletos_comprados
(id_viaje, id_vuelo, id_cliente, ID_AGENCIA_VIAJE)
values (300,  100, 200, 1);
