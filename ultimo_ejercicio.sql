--1
select count(distinct(vd_prodid)) as cantidad_vendidos
from productos,ventas_detalle where productos.prod_id= ventas_detalle.VD_ProdId

select * from ventas
select * from ventas_detalle
select * from productos
--2
select sum(vd_precio * vd_cantidad) as total_vendido_productos from ventas_detalle
join productos on VD_ProdId=Prod_Id join ventas on VD_VentasId=Ventas_Id
where (Ventas_Fecha between '2018-01-02' and '2018-01-10') and (Prod_ProvId between 2 and 100)

--3
select max(ventas_total) as factura_maxima from ventas,ventas_detalle
where (ventas_detalle.VD_VentasId = ventas.Ventas_Id) and ventas_detalle.VD_ProdId=656
