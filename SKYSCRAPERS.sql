drop table skyscrapers
Create table skyscrapers(id integer primary key identity(50,1),
name varchar(50),country varchar(20),height_meters varchar(20),floors varchar(20))

insert into skyscrapers values('burj khalifa','UAE','88','163')
insert into skyscrapers values('Shangay tower','china','632','128')
insert into skyscrapers values('Abraj al-balt clock tower','Saudi Arabia','601','120')
insert into skyscrapers values('One world trade center','United States','541','104')
insert into skyscrapers values('CN tower','Canada','553','147')

select * from skyscrapers

/*ACTUALIZAR DATOS DE MTS DE ALTURA BURJ KHALIFA*/
UPDATE skyscrapers SET height_meters = '888' WHERE name= 'burj khalifa'

select * from skyscrapers

/*A) ordenar por orden de altura*/
select * from skyscrapers order by height_meters 

/*B) edificio con altura >500 y pisos >110*/
select * from skyscrapers where height_meters>500 and floors>110

/*C) igual al B) pero solo de china*/
select * from skyscrapers where (height_meters>500 and floors>110) and country='china'