drop table fruits
create table fruits(id integer primary key identity(50,1),
name varchar(20),price real,season varchar(29))

insert into fruits values ('cactus pear',1,'winter')
insert into fruits values ('passion fruit',3,'winter')
insert into fruits values ('apricot',2,'spring')
insert into fruits values ('lychee',2,'spring')
insert into fruits values ('guava',2,'fall')
insert into fruits values ('fig',1,'summer')
insert into fruits values ('pineapple',4,'fall')
insert into fruits values ('durian',10,'summer')

select * from fruits

/*FRUTAS MAS BARATAS <=4*/
select * from fruits where price <=4

/*FRUTAS MAS CARAS */
select * from fruits where price >4

/*FRUTAS MAS BARAS EN VERANO <=4*/

select * from fruits where price <=4 and season='summer'

/*frutas de invierno y otoño*/
select * from fruits where season='fall' or season='winter'

/*frutas de invierno y otoño y precio <3 y ordenado por nombre*/
select * from fruits where price <3 and 
(season='fall' or season='winter') order by name desc

/*frutas winter fall y summer*/
select * from fruits where season='winter' or season='fall' or season='summer'


/*arreglo de IN (NOTA TIENEN QUE SER VARCHAR)*/
/*frutas winter fall y summer*/
select * from fruits where season in ('winter','fall','summer')

/*arreglo de IN (NOTA TIENEN QUE SER VARCHAR)*/
/*todas las frutas  EXCEPTO winter fall y summer*/
select * from fruits where season not in ('winter','fall','summer')