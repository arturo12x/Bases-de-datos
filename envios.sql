create table proveedores(
p# char(3),
pnombre varchar(20),
categgorias int,
ciudad varchar(30),
constraint p#_pk primary key(p#))

insert into proveedores values('p1','carlos',20,'sevilla')
insert into proveedores values('p2','juan',10,'madrid')
insert into proveedores values('p3','jose',30,'sevilla')
insert into proveedores values('p4','inma',20,'sevilla')
insert into proveedores values('p5','eva',30,'caceres'
)

create table componentes(
c# char(3),
cnombre varchar(20),
color char(10),
peso int,
ciudad varchar(30),
constraint c#_pk primary key (c#))

insert into componentes values('c1','x3a','rojo',12,'sevilla')
insert into componentes values('c2','b85','verde',17,'madrid')
insert into componentes values('c3','c4b','azul',17,'malaga')
insert into componentes values('c4','c4b','rojo',14,'sevilla')
insert into componentes values('c5','vt8','azul',12,'madrid')
insert into componentes values('c6','c30','rojo',19,'sevilla')

create table articulos(
t# char(3),
tnombre varchar(20),
ciudad varchar(30),
constraint t#_pk primary key(t#))

insert into articulos values('t1','clasificadora','madrid')
insert into articulos values('t2','perforadora','malaga')
insert into articulos values('t3','lectora','caceres')
insert into articulos values('t4','consola','caceres')
insert into articulos values('t5','escoba','caceres')
insert into articulos values('t6','trapeador','malaga')
insert into articulos values('t7','recogedor','madrid')

drop table envios 


create table envios(
p# char(3) constraint p# references proveedores(p#),
c# char(3) constraint c# references componentes(c#),
t# char(3) constraint t# references articulos(t#),
cantidad int)

iNSERT INTO ENVIOS VALUES ('P1','C1','T1',200)
INSERT INTO ENVIOS VALUES ('P1','C1','T4',700)
INSERT INTO ENVIOS VALUES ('P2','C3','T1',400)
INSERT INTO ENVIOS VALUES ('P2','C3','T2',200)
INSERT INTO ENVIOS VALUES ('P2','C3','T3',200)
INSERT INTO ENVIOS VALUES ('P2','C3','T4',500)
INSERT INTO ENVIOS VALUES ('P2','C3','T5',600)
INSERT INTO ENVIOS VALUES ('P2','C3','T6',400)
INSERT INTO ENVIOS VALUES ('P2','C3','T7',800)
INSERT INTO ENVIOS VALUES ('P2','C5','T2',100)
INSERT INTO ENVIOS VALUES ('P3','C3','T1',200)
INSERT INTO ENVIOS VALUES ('P3','C4','T2',500)
INSERT INTO ENVIOS VALUES ('P4','C6','T3',300)
INSERT INTO ENVIOS VALUES ('P4','C6','T7',300)
INSERT INTO ENVIOS VALUES ('P5','C2','T2',200)
INSERT INTO ENVIOS VALUES ('P5','C2','T4',100)
INSERT INTO ENVIOS VALUES ('P5','C5','T4',500)
INSERT INTO ENVIOS VALUES ('P5','C5','T7',100)
INSERT INTO ENVIOS VALUES ('P5','C6','T2',200)
INSERT INTO ENVIOS VALUES ('P5','C1','T4',100)
INSERT INTO ENVIOS VALUES ('P5','C3','T4',200)
INSERT INTO ENVIOS VALUES ('P5','C4','T4',800)
INSERT INTO ENVIOS VALUES ('P5','C1','T5',400)

select * from articulos where ciudad='caceres'

select p# from envios where envios.t#= 't1'

select distinct color,ciudad from componentes

select t#,ciudad from articulos where ciudad like'%d' or ciudad like '%e%'

--todos los numeros de proveedor de envios que suministran al articulo t1 y componente c1
select p# from envios where t#='t1' and c#='c1'

--todos los valores de tnombre en orden alfabetico para todos los artiuclos que son abastecidos por el proveedor 1
select tnombre from articulos,proveedores,envios where proveedores.p#='p1' and  envios.t#=articulos.t#

select * from articulos
select * from envios
