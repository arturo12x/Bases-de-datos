drop table mi_tiendita

create table mi_tiendita(itemID int primary key identity(1,1),
itemname varchar(40),stock int,aisle int,price real)

insert into mi_tiendita values('chorizo',10,2,20.50)
insert into mi_tiendita values('chorizo',4,4,40)
insert into mi_tiendita values('cheese',90,6,90)
insert into mi_tiendita values('ham',67,7,45.50)
insert into mi_tiendita values('cookies',150,5,38)
insert into mi_tiendita values('apples',400,9,60)
insert into mi_tiendita values('watermelon',60,9,15)
insert into mi_tiendita values('potatoes',80,3,33)
insert into mi_tiendita values('american cheese',150,5,50)
insert into mi_tiendita values('flour',47,6,15)
insert into mi_tiendita values('pineapple',90,8,23)
insert into mi_tiendita values('meat',100,2,75.25)
insert into mi_tiendita values('chicken',62,9,70)
insert into mi_tiendita values('chcolate',189,7,15)
insert into mi_tiendita values('coca-cola',200,3,15)

/*ORDENAR POR PRECIO*/
SELECT * FROM mi_tiendita order by price desc

/*ESTIDISTICA SUMA*/
SELECT   SUM(stock) as total_stock  from mi_tiendita


/*ESTIDISTICA avg */
SELECT aisle, avg(stock*price) as average_price_aisle3 from mi_tiendita where aisle=3  group by aisle

/*ESTADISTICA EL ARTICULO MAS CARO en el pasillo 2*/
SELECT MAX(PRICE) as precio_max_aisle2   from mi_tiendita where aisle=2

/*ESTADISTICA EL ARTICULO MAS BARATO */
SELECT MIN(PRICE) as precio_max  from mi_tiendita 


/*DISTINCT*/
select distinct itemname from mi_tiendita

/*like*/
select * from mi_tiendita where itemname like '[c,p]%'
