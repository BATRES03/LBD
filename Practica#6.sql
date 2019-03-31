
SELECT *
FROM Almacenes as al
INNER JOIN direcciones_Almacen as dal ON al.direccion_id = dal.direccion_id

select * 
from empleados as em
INNER join venta as ve on em.id_empleado = ve.id_empleado

SELECT * 
FROM PRODUCTOS as pro
inner join venta as ve on pro.Producto_Id = ve.Producto_Id

SELECT * 
FROM Tickets as tk
inner join Sucursales as su on tk.Sucursal_Id = su.Sucursal_Id


Select *
from Venta as ve
inner join Productos as pro on ve.Producto_Id = pro.Producto_Id


Select *
from Compra as com
inner join provedor as pro on com.Provedor_Id =  pro.Provedor_Id

--compras de hoy
SELECT * 
FROM compra 
where Dia_Compra = CONVERT (date, SYSDATETIME())


--ventas de hoy
SELECT * 
FROM venta 
where Dia_Venta = CONVERT (date, SYSDATETIME())

--ventas del mes

SELECT * 
FROM venta 
where month(Dia_Venta) = MONTH(GETDATE())

--ventas del año
SELECT * 
FROM venta 
where year(Dia_Venta) = year(GETDATE())

