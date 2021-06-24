
create table exercise_logs2(
Id integer identity(1,1) primary key,
Tipo varchar(30),
Minutos integer, 
Calorias int, 
Heart_rate real)

insert into exercise_logs2 values('Biking',30,100,110)
insert into exercise_logs2 values('Biking',10,30,105)
insert into exercise_logs2 values('Runing',30,280,120)
insert into exercise_logs2 values('Dancing',15,200,120)
insert into exercise_logs2 values('Climbing',30,70,120)
insert into exercise_logs2 values('Climb',25,80,80)
insert into exercise_logs2 values('Rowing',30,70,90)
insert into exercise_logs2 values('Hiking',60,80,85)

select * from exercise_logs2
/*update*/
update exercise_logs2 set tipo='Climbing' where Id=6

/*Calorias>50 ordenado por calorias*/
select * from exercise_logs2 where calorias>50 order by calorias

/*calorias >50 y minutos<30*/
select * from exercise_logs2 where calorias>50 and minutos<30

/*calorias>50o heartrate>100*/
select * from exercise_logs2 where calorias>50 or heart_rate>100

/*tipo (in)*/
select * from exercise_logs2 where tipo in('Dancing','climbing','rowing','hiking')
select * from exercise_logs2 where tipo not in('Dancing','climbing','rowing','hiking')
select distinct tipo from exercise_logs2 where tipo not in('Dancing','climbing','rowing','hiking') 

create table favorite(id integer identity(1,1)primary key,
tipo varchar(30),reason char(50))
insert into favorite values('Biking','Mejorar La Flexibilidad')
insert into favorite values('Hiking','por ser cardiovascular')
insert into favorite values('Runing','es entretenido')

select*from exercise_logs2 where tipo in(select tipo from favorite)
select*from exercise_logs2 where tipo in(select tipo from favorite where reason like '%entretenido%')

select Tipo,sum(Calorias) as 'total Calorias' from exercise_logs2 group by tipo

select Tipo,Heart_rate,
case
when heart_rate> 220-30 then 'Above_Max'
when heart_rate> round(0.90 * (220-30),2) then 'Above target'
when heart_rate> round(0.50 * (220-30),2) then 'within target'
else
'below target'
end as hr_zone
from exercise_logs2;


