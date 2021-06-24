--JAZHIEL ARTURO COSSIO LOPEZ
--EXAMEN

create table departamento(codDepto int primary key,
nombreDpto varchar(100),
ciudad varchar(100),
director varchar(100));

insert into departamento values
(1000,'GERENCIA','CALI','31.840.269'),
(1500,'PRODUCCION','CALI','16.211.383'),
(2000,'VENTAS','CALI','31.178.144'),
(3000,'INVESTIGACION','CALI','16.759.060'),
(3500,'MERCADEO','CALI','22.222.222'),
(2100,'VENTAS','POPAYAN','31.751.219'),
(2200,'VENTAS','BUGA','768.782'),
(2300,'VENTAS','CARTAGO','737.689'),
(4000,'MANTENIMIENTO','CALI','333.333.333'),
(4100,'MANTENIMIENTO','POPAYAN','888.888'),
(4200,'MANTENIMIENTO','BUGA','11.111.111'),
(4300,'MANTENIMIENTO','CARTAGO','444.444')

create table empleado (ndiemp varchar(100) primary key,
nomemp varchar(50),
sexemp varchar (50),
fecnac date,
fecincorporacion date,
salemp int,
comisione int,
cargoe varchar(50),
jefeid varchar(50),
coddepto int constraint empleado_coddepto_rest references departamento (codDepto))

insert into empleado values
('333.333.335','ana moreno','F','05-01-92','01-06-2004',1200000,400000,'Secretaria','16.759.060',3000),
('31.840.269','Maria Rojas','F','15-01-59','16-06-1990',6250000,1500000,'gerente','0',1000),
('16.211.383','Luis Perez','M','25-02-56','01-01-2000',5050000,0,'Director','31.480.269',1500),
('31.178.144','Rosa Angulo','F','15-03-57','16-08-1998',3250000,3500000,'Jefe De Ventas','31.840.269',2000),
('16.759.060','Dario Casas','M','05-04-60','01-11-1992',4500000,500000,'Investigador','31.840.269',3000)

--1. Obtener los datos completos de los empleados.
select * from empleado

--2. Obtener los datos completos de los departamentos
select * from departamento

--3. Obtener los datos de los empleados con cargo Secretaria
select * from empleado where cargoe like('Secretaria')

--4. Obtener el nombre y salario de los empleados*/
select nomemp,salemp from empleado

-- 5
select prod_id as codigo,
prod_descripcion as descripcion
from productos 
where prod_id in (select vd_prodid from ventas_detalle)  and
prod_descripcion like '%tarugos%'