create table student_grades(
id integer primary key identity(1,1),
name varchar(50),
number_grade integer, 
fraction_completed real)

Insert into student_grades values('Alejandro',90,0.805)
Insert into student_grades values('Fanny',95,0.901)
Insert into student_grades values('Brenda',85,0.906)
Insert into student_grades values('Ramiro',66,0.7054)
Insert into student_grades values('Jorge',76,0.5013)
Insert into student_grades values('Carlos',82,0.9045)


select name,(number_grade*fraction_completed) as calificacion_total from student_grades group by name order by calificacion_total desc

select name,
case
when round(number_grade*fraction_completed,2) >=90 then 'A'
when round(number_grade*fraction_completed,2) between 80 and 89 then 'B'
when round(number_grade*fraction_completed,2) between  70 and 79 then 'C'
else
'F'
end as 
'letter_grade'
from student_grades order by number_grade desc


