drop table movies
create table movies (id integer primary key identity(1,1),
										name varchar (50),release_year integer)
										
insert into movies values('Avatar',2009)
insert into movies values('Titanic',1997)
insert into movies values('Star Wars Episode IV a New Hope',1977)
insert into movies values('Sherk 2',2004)
insert into movies values('The Lion King',1994)
insert into movies values('Disneys Up ',2009)


select * from movies

/* Peliculas que hayan salido del año 2000 en adelante ordenadas de la mas nueva a la mas vieja*/
select * from movies where release_year>=2000 order by release_year desc

/*El release year agrupar por año cuantas peliculas se hicieron*/
Select release_year, COUNT(*) as total from movies group by release_year


/*El release year agrupar por año cuantas peliculas se hicieron del año 2000 en adelante*/
Select release_year, COUNT(*) as total from movies  where release_year>=2000 group by release_year

/*Hace una busqueda que contenga "ki" puede estar en medio   's%que empiece con s     '%s%' que tenga s donde sea     '%s' termine con s*/
select * from movies where name like '%ki%'

/*BUSCAR SEGUN POSICION DE LETRAS*/
select * from movies where name like 'A_ata_'

/*Muestra aquellos resultados que tengan cuelquier letra especificadas */
select * from movies where name like '%[A,c,t]%'
f
/*Muestra aquellos resultados que empiecen con las letras especificadas */
select * from movies where name like '[A,c,t]%'

/*Muestra aquellos resultados que terminen con las letras especificadas */
select * from movies where name like '%[A,c,t]'

/*Las peliculas que tenga una h en el nombre y que sean despues del 1997*/
Select * from movies  where name like '%h%' and release_year>=1997

/*todas las peliculas que empiecen con s o con d y que sean despues del 2000*/
select * from movies where name like '[s,d]%' and release_year>2000


/*todas las peliculas que empiecen con s y terminen con e*/
select * from movies where name like 's%' and name like '%e'