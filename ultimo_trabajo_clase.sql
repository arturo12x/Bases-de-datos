if object_id ('trabajadores') is not null
drop  table trabajadores
if object_id('secciones') is not null
drop table secciones

create table secciones(
codigo tinyint identity, nombre varchar (20),
sueldo decimal(5,2)
constraint ck_secciones_sueldo check (sueldo>=0),
constraint pk_secciones primary key (codigo))

create table trabajadores(
legajo int identity,
documento char(8)
constraint ck_trabajadores_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
cantidadhijos tinyint 
constraint ck_trabajadores_hijos check (cantidadhijos>=0),
estadocivil char(10),
sexo char(1)
constraint ck_trabajadores_sexo check (sexo in ('f','m')),
apellido varchar (20),
nombre varchar(20),
domicilio varchar (30),
seccion tinyint not null,
constraint ck_trabajadores_estadocivil check (estadocivil in ('casado','divorciado','soltero','viudo')),
fechaingreso datetime,
constraint pk_empleados primary key (legajo),
constraint fk_trabajadores_seccion foreign key (seccion) references secciones (codigo) on update cascade,
constraint uq_empleados_documento unique (documento))

insert into secciones values
('administracion',300),
('contaduria',400),
('sistemas',500)

insert into trabajadores values
('22222222','f','lopez','ana','colon 123',1,2,'casado','1990-10-10'),
('23333333','m','lopez','luis','sucre 235',1,0,'soltero','1990-02-10'),
('24444444','m','garcia','marcos','sarmiento 1234',2,3,'divorciado','1998-07-12'),
('25555555','m','gomez','pablo','bulnes 321',3,2,'casado','1998-10-09'),
('26666666','f','perez','laura','peru 12354',3,3,'casado','2000-05-09')

if OBJECT_ID('vista_trabajadroes') is not null drop view vista_trabajadores

create view vista_trabjadores as
(select (apellido+' ' +e.nombre) as nombre,sexo,s.nombre as seccion,cantidadhijos
from trabajadores as e
join secciones as s
on codigo=seccion)

select * from vista_trabjadores
  select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS where TABLE_NAME='trabajadores'

select seccion,count(*) as cantidad
from vista_trabajadores group by seccion

select * from vista_trabjadores_ingreso
