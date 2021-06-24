drop table ventas

create table ventas(VentasID integer primary key identity(50,1),
ventas_fecha date,ventas_CliID integer,Ventas_noFactura integer ,
ventas_neto real,ventas_IVA real,ventas_total real)

insert  into ventas values('10/09/2019',1,101,10000,0.16,2000)
insert  into ventas values('10/09/2019',2,201,10000,0.16,3000)
insert  into ventas values('10/09/2019',3,301,10000,0.16,1125)
insert  into ventas values('10/09/2019',4,401,10000,0.16,1125)
insert  into ventas values('08/09/2019',5,501,10000,0.16,1125)
insert  into ventas values('11/09/2019',6,601,10000,0.16,1125)
insert  into ventas values('09/09/2019',7,701,10000,0.16,1125)

insert  into ventas values('13/10/2019',8,801,10000,0.16,1125)
insert  into ventas values('13/10/2019',9,901,10000,0.16,1125)

select * from ventas

select SUM(ventas_total) as Total_ventas from ventas

/*project (mostrar solo datos seleccionados*/
select ventas_fecha, ventas_total from ventas

/*Muestra los datos diferentes en este caso los que tienen fecha diferente*/
select distinct ventas_fecha,ventas_total from ventas

/*Muestra los datos diferentes en este caso los que tienen fecha diferente*/
select distinct ventas_fecha from ventas

/*AGRUPACION DE VENTAS POR FECHA*/
SELECT ventas_fecha, SUM(ventas_total) as venta_por_dia from ventas group by ventas_fecha

/*CUANTAS VENTAS SE HICIERON EN EL DIA*/
SELECT ventas_fecha, COUNT	(ventas_total) as venta_por_dia from ventas group by ventas_fecha


/*SEPARAR LA FECHA POR PARTES Y MOSTRAR LAS VENTAS TOTALES POR DIA*/
SELECT YEAR(ventas_fecha)AS AÑO ,
              MONTH (ventas_fecha) AS  MES ,
              DAY(ventas_fecha) AS DIA,
              SUM(ventas_total) AS TOTAL 
from ventas GROUP BY (ventas_fecha) ORDER BY TOTAL desc

/*suma de ventas por dia pero del cliente 1 separados año mes y dia*/
SELECT YEAR(ventas_fecha)AS AÑO ,
              MONTH (ventas_fecha) AS  MES ,
              DAY(ventas_fecha) AS DIA,
              SUM(ventas_total) AS TOTAL 
from ventas where ventas_CliID=1 GROUP BY (ventas_fecha) 

/*para especificar un rango podemos usar between para no estar escribiendo and*/
SELECT ventas_fecha, ventas_total from ventas where ventas_fecha between  '2019-08-01' and '2019-10-31'

/*MUESTRA TODOS LOS DATOS QUE CONTENGAN A LOS CLIENTES CON ID ENTRE 3 Y 5*/
select * from ventas where ventas_CliID between 3 and 5