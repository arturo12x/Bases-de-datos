drop table students
create table students(
id integer primary key identity(1,1),
first_name varchar (50),
last_name varchar(50),
email varchar(50),
phone varchar(50),
birthdate date)


insert into students values('PETER','RABBIT','PETER@RABIIT.COM','555-6666','2002-06-24')
insert into students values('ALICE','WONDERLAND','ALICE@WONDERLAND.COM','555-6666','2002-06-24')

drop table student_grade
CREATE TABLE student_grade(
id integer primary key identity(1,1),
student_id integer,
test varchar(50),
grade integer)

insert into student_grade values(1,'nutrition',95)
insert into student_grade values(2,'nutrition',92)
insert into student_grade values(1,'chemestry',85)
insert into student_grade values(2,'chemestry',95)

drop table teachers
create table teachers(
id integer primary key identity(1,1),
name varchar(50),
email varchar(50))

insert into teachers values('Luis Mendoza','Luis.mendoza@utlaguna.edu.mx')
insert into teachers values('David Rodriguez','david.rod@utlaguna.edu.mx')
insert into teachers values('Victor solis','victor.solis@utlaguna.edu.mx')


select * from student_grade
select * from students
select* from teachers

-- Cross join (combinacion de todos los registros)
select * from students,student_grade
select * from students cross join student_grade

--inner join
select * from student_grade,students where student_grade.student_id=students.id
select * from students inner join student_grade on student_grade.student_id = students.id

--explicit inner join
select students.first_name,students.last_name,students.email,student_grade.test,student_grade.grade
from students join student_grade on students.id =student_grade.student_id

select students.first_name,students.last_name,students.email,student_grade.test,student_grade.grade
from students join student_grade on students.id =student_grade.student_id where grade >90


--agregar id teacher en tabla estudiante
alter table students add id_teacher integer
update students set id_teacher=1 where id=1
update students set id_teacher=2 where id=2
update students set id_teacher=2 where id=2


--unificar table students con teachers
select students.first_name, teachers.name from students join teachers on students.id_teacher =teachers.id

select students.first_name,teachers.name as teacher_name from students left outer join teachers on students.id_teacher =teachers.id
