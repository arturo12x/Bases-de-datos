--  examen u2 Jazhiel Arturo Cossio Lopez


create table alumnos(
alumno_id integer primary key,
alumno_nombre varchar(60))

create table cursos(
curso_id integer primary key,
cursomateria_id integer,
curso_alumnoid integer,
curso_nota real)

insert into alumnos values(1,'Pedro')
insert into alumnos values(2,'Marcos')
insert into alumnos values(3,'Pablo')
insert into alumnos values(4,'Maria')

insert into cursos values(1,1,1,5)
insert into cursos values(2,1,2,3)
insert into cursos values(3,1,6,7)

--L E F T    J O I N 
SELECT * FROM alumnos left join cursos on curso_alumnoid=alumno_id

--F U L L   J O I N
SELECT * FROM alumnos FULL JOIN  cursos on alumnos.alumno_id = cursos.curso_alumnoid

--R I G H T   J O I N
SELECT * FROM alumnos right join cursos on curso_alumnoid=alumno_id

--E X P L I C I T    J O I N
SELECT alumnos.alumno_id,cursos.cursomateria_id,cursos.curso_nota 
FROM alumnos,cursos WHERE alumno_id=curso_alumnoid


--P R E G U N T A S    O P C I ON   M U L T I P L E

-- 2 = B

--3 = A

--4= B

--5 = D

--6 = A

--7 = B

--8 = B

--9 = A

--10 = A

--11 = B

--12 = B

--13 = c

--14 =  insert, update

