	select * from clientes
	select * from productos
	select * from proveedores
	select * from ventas
	select * from ventas_detalle

	update productos  set  Prod_Status = 0 
	update productos set Prod_Status=1 where Prod_Precio>0;

select * from productos where Prod_ProvId=1

select * from proveedores where proveedores.Prov_Nombre like'180%'
--precios de los procutos en 100 cuando los proveedores inicion en 180
update productos set productos.Prod_Precio=100 from productos,proveedores where proveedores.Prov_Nombre like'180%'





update productos set Prod_Precio=100 from productos inner join proveedores on productos.Prod_Id= proveedores.Prov_Id where proveedores.Prov_Nombre like '180%'
 
update productos set Prod_Precio=100 from productos,proveedores where productos.Prod_Id=proveedores.Prov_Id and proveedores.Prov_Nombre like '180%'

select * from productos
