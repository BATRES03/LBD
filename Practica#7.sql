CREATE VIEW todos_almacenes as
SELECT *
FROM Almacenes 
select * from todos_almacenes

CREATE VIEW todos_empleados as
select * 
from empleados 
select * from todos_empleados

CREATE VIEW todos_productos as
SELECT * 
FROM PRODUCTOS 
select * from todos_productos

create view todos_ticket as
SELECT * 
FROM Tickets 
select * from todos_ticket

create view todas_ventas as
Select *
from Venta 
select * from todas_ventas

create view todas_compras as
Select *
from Compra 
select * from todas_compras

create view compras_de_hoy as
SELECT * 
FROM compra 
where Dia_Compra = CONVERT (date, SYSDATETIME())
select * from compras_de_hoy

create view ventas_de_hoy as
SELECT * 
FROM venta 
where Dia_Venta = CONVERT (date, SYSDATETIME())
select * from ventas_de_hoy

create view ventas_del_mes as
SELECT * 
FROM venta 
where month(Dia_Venta) = MONTH(GETDATE())
select * from ventas_del_mes

create view ventas_del_a�o as
SELECT * 
FROM venta 
where year(Dia_Venta) = year(GETDATE());
select * from ventas_del_a�o
