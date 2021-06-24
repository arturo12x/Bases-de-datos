--viernes 15 nov
select * from productos where prod_status=1
select * from ventas_detalle

--los productos cuyo prod_id<50 =1

update productos set Prod_Status=1 where Prod_Id<50 
select * from ventas_detalle
--productos cuyo id<50
select * from ventas_detalle where VD_ProdId<50
--borrar productos ventas_detalle los cuales tengan status 1 en producto
delete ventas_detalle  from ventas_detalle,productos where ventas_detalle.VD_ProdId=productos.Prod_Id and productos.Prod_Status=1


select top 5 * from ventas_detalle
select top 5 * from ventas
select top 5 * from productos
select Ventas_Fecha,ventas_nrofactura,ventas_total from ventas

select vd_prodid,vd_cantidad,vd_precio from ventas_detalle where VD_Precio>0
--
select ventas_fecha,ventas_total from ventas group by Ventas_Total
select sum(ventas_total)as total_venta ,ventas_fecha from ventas group by Ventas_Fecha

--que separe como queda por mes y año
select year(ventas_fecha) as año ,MONTH(ventas_fecha) as mes,sum(ventas_total) as venta from ventas group by Year(Ventas_Fecha),MONTH(ventas_fecha)

select  top 5 * from ventas_detalle

select  top 5 * from ventas


select vd_prodid as producto, sum(vd_precio *vd_cantidad) as total  from ventas_detalle group by VD_ProdId