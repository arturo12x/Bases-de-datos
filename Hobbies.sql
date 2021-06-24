create table persons(
id integer primary key,
name varchar(50),
age integer)

insert into persons values(1,'Bobby McBobbyFace',12)
insert into persons values(2,'Lucy BoBucie',25)
insert into persons values(3,'Banana FoFanna',14)
insert into persons values(4,'Shish Kabob',20)
insert into persons values(5,'Fluffy Sparkles',8)

create table hobbies(
id integer primary key,
person_id integer,
name varchar(50))

insert into hobbies values(1,1,'drawing')
insert into hobbies values(2,1,'coding')
insert into hobbies values(3,2,'dancing')
insert into hobbies values(4,2,'coding')
insert into hobbies values(5,3,'skating')
insert into hobbies values(6,3,'rowing')
insert into hobbies values(7,3,'drawing')
insert into hobbies values(8,4,'coding')
insert into hobbies values(9,4,'dilly-dallying')
insert into hobbies values(10,4,'meowing')

|

select persons.name, hobbies.name from persons , hobbies  where hobbies.person_id=persons.id

select persons.name,hobbies.name from persons,hobbies where persons.name like '%bobby%' and (persons.id=hobbies.person_id)