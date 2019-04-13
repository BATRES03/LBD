
create trigger actualizar3
  on Productos
  for update
  as
   if (update(Precio_producto) and
    not update(Precio_producto) )
   begin
    select 
    (d.Producto_id+'-'+ d.Precio_Producto) as 'registro anterior',
    (i.Producto_id+'-'+ i.Precio_Producto) as 'registro actualizado'
     from deleted as d
     join inserted as i
     on d.Producto_Id=i.Producto_Id
  
   end;

CREATE TRIGGER ValoresAnteriores ON Productos
AFTER INSERT, UPDATE, DELETE
AS
 SELECT * FROM deleted;
 SELECT * FROM inserted;

CREATE PROCEDURE todosalmacenes as
SELECT *
FROM Almacenes 
go;
EXEC todosalmacenes;

CREATE PROCEDURE todosempleados as
select * 
from empleados
go; 
EXEC todosempleados;

CREATE PROCEDURE todosproductos as
SELECT * 
FROM PRODUCTOS 
go;
EXEC todosproductos;

CREATE PROCEDURE todosticket as
SELECT * 
FROM Tickets 
go;
EXEC todosticket;

CREATE PROCEDURE todasventas as
Select *
from Venta 
go;
EXEC todasventas;

CREATE PROCEDURE todascompras as
Select *
from Compra 
go;
EXEC todascompras;

CREATE PROCEDURE comprasdehoy as
SELECT * 
FROM compra 
where Dia_Compra = CONVERT (date, SYSDATETIME())
EXEC comprasdehoy;

CREATE PROCEDURE ventasdehoy as
SELECT * 
FROM venta 
where Dia_Venta = CONVERT (date, SYSDATETIME())
EXEC ventasdehoy;

CREATE PROCEDURE ventasdelmes as
SELECT * 
FROM venta 
where month(Dia_Venta) = MONTH(GETDATE())
EXEC ventasdelmes;

CREATE PROCEDURE ventasdelaño as
SELECT * 
FROM venta 
where year(Dia_Venta) = year(GETDATE());
EXEC ventasdelaño;



CREATE FUNCTION EnMayusculas
(
@Nombre Varchar(50),
@Apellido Varchar(50)
)
RETURNS Varchar(100)
AS
BEGIN
 RETURN (UPPER(@Apellido) + ', ' + UPPER(@Nombre))
END


DECLARE @ConsultaSQL NVARCHAR(500)
DECLARE @Tabla NVARCHAR(25)
SET @Tabla = 'Productos'
SET @ConsultaSQL = 'SELECT * FROM ' + @Tabla
EXEC(@ConsultaSQL);

