insert into Direcciones_Almacen (Direccion_id,Colonia,Calle,Numero)values(100,'Solidaridad','Cabezada',9863)
insert into Direcciones_Almacen (Direccion_id,Colonia,Calle,Numero)values(101,'Fomerrey113','HOz',8428)
insert into Direcciones_Almacen (Direccion_id,Colonia,Calle,Numero)values(102,'Del Prado','Monte alto',6845)
insert into Direcciones_Almacen (Direccion_id,Colonia,Calle,Numero)values(103,'Victoria','Caliza',2148)
insert into Direcciones_Almacen (Direccion_id,Colonia,Calle,Numero)values(104,'Treviño','diabaza',7854)

insert into Almacenes (Almacen_Id,Nombre_Almacen,Direccion_Id)values(200,'Almacen Solidaridad',100)
insert into Almacenes (Almacen_Id,Nombre_Almacen,Direccion_Id)values(201,'Almacen Fomerrey113',101)
insert into Almacenes (Almacen_Id,Nombre_Almacen,Direccion_Id)values(202,'Almacen Del Prado',102)
insert into Almacenes (Almacen_Id,Nombre_Almacen,Direccion_Id)values(203,'Almacen Victoria',103)
insert into Almacenes (Almacen_Id,Nombre_Almacen,Direccion_Id)values(204,'Almacen Treviño',104)

insert into Provedor(Provedor_ID,Nombre_Provedor)values(300,'Cosmos Acril')
insert into Provedor(Provedor_ID,Nombre_Provedor)values(301,'Agencia de Comercios y Servicios PANAMA')
insert into Provedor(Provedor_ID,Nombre_Provedor)values(302,'Industrial Mueblero Escolar')
insert into Provedor(Provedor_ID,Nombre_Provedor)values(303,'Konfort Mobiliario')
insert into Provedor(Provedor_ID,Nombre_Provedor)values(304,'Acacia proyectos')
insert into Provedor(Provedor_ID,Nombre_Provedor)values(305,'Colchones Sommier')
insert into Provedor(Provedor_ID,Nombre_Provedor)values(306,'Chrometro')
insert into Provedor(Provedor_ID,Nombre_Provedor)values(307,'Cisesa')
insert into Provedor(Provedor_ID,Nombre_Provedor)values(308,'Mapli')
insert into Provedor(Provedor_ID,Nombre_Provedor)values(309,'Grupo FIMSA')

insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(400,200,300)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(401,200,300)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(402,200,301)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(403,200,301)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(404,200,302)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(405,201,302)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(406,201,303)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(407,201,303)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(408,201,304)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(409,201,304)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(410,202,305)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(411,202,305)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(412,202,306)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(413,202,306)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(414,202,307)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(415,203,307)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(416,203,308)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(417,203,308)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(418,203,308)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(419,204,309)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(420,204,309)
insert into Almacen(Poducto_IdAlmacen,Almacen_Id,Provedor_ID)values(421,204,309)





insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(500,'Closet','Closet color cafe',3000,400)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(501,'Sillon','Sillon color negro',1000,401)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(502,'Banca','Bancas color cafe obscuro',1000,402)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(503,'Percheros','Percheros color cafe',500,403)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(504,'POOF','POOF color cafe',1500,404)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(505,'Periqueras Para Bebe','Periqueras Para Bebe color blacno',2000,400)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(506,'Mesa de madera','Mesa de madera color cafe obscuro',3000,401)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(507,'Silla de exterior','Silla de exterior color cafe obscuro',1000,402)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(508,'Barras para bares','Barras para bares color cafe obscuro',400,403)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(509,'Bancos','Bancos color cafe',500,404)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(510,'Bases de madera','Bases de madera color cafe',3000,400)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(511,'stands','stands color negro',2000,401)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(512,'Perfumero','Perfumero color cafe obscuro',1700,402)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(513,'Peceras','Pecera 4 metros cuadrados',900,403)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(514,'buzones','buzones color blanco',2500,404)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(515,'Portarretratos','Portarretratos color cafe',200,400)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(516,'Señalamientos','Señalamientos decorativos',300,401)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(517,'Mueble escolares','Mueble escolares colorblanco',2000,402)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(518,'mueble de laboratorio','mueble de laboratorio blanco',300,403)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(519,'porta zapatos','porta zapatos color azul',600,404)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(520,'Escritorio','Escritorio color cafe',1200,403)

insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(521,'ropero','ropero color cafe claro',2500,404)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(522,'Puerta','Puerta de madera color blanco',300,403)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(523,'Puerta','Puerta de madera color cafe',300,403)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(524,'Puerta','Puerta de madera color cafe obscuro',300,403)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(525,'Puerta','Puerta de madera color cafe calro',300,403)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(526,'Puerta','Puerta de madera color crema ',300,403)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(527,'Puerta','Puerta de madera color negro',300,403)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(528,'Mesa de cocina','mesa de cocina color cafe',600,404)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(529,'Silla de cocina','Silla de cocina color cafe',1200,403)
insert into productos(Producto_Id,Nombre_Producto,Descripcion,Precio_Producto,Poducto_IdAlmacen)values(530,'mesa de centro','mesa de centro color cafe',2500,404)



select * from productos

insert into Empleados(Id_Empleado,nombre,Appaterno,ApMaterno,fechanac,telefono)values(600,'Alejandro','batres','Herrera','9/12/1998',81125465)
insert into Empleados(Id_Empleado,nombre,Appaterno,ApMaterno,fechanac,telefono)values(601,'silerio','esquivel','ronaldo','9/12/1998',81125465)
insert into Empleados(Id_Empleado,nombre,Appaterno,ApMaterno,fechanac,telefono)values(602,'ernesto','gonzalez','mitsui','9/12/1998',81125465)
insert into Empleados(Id_Empleado,nombre,Appaterno,ApMaterno,fechanac,telefono)values(603,'mauricio','lopez','rodriguez','9/12/1998',81125465)
insert into Empleados(Id_Empleado,nombre,Appaterno,ApMaterno,fechanac,telefono)values(604,'osmar','gutierres','macias','9/12/1998',81125465)
insert into Empleados(Id_Empleado,nombre,Appaterno,ApMaterno,fechanac,telefono)values(605,'allfonso','herrera','lopez','9/12/1998',81125465)
insert into Empleados(Id_Empleado,nombre,Appaterno,ApMaterno,fechanac,telefono)values(606,'fernando','milos','bolaños','9/12/1998',81125465)



insert into direcciones(direccion_id,colonia,calle,numero)values(700,'Jardines de anahuac','polacos',8452)
insert into direcciones(direccion_id,colonia,calle,numero)values(701,'real de anahuac','zarsal',2352)
insert into direcciones(direccion_id,colonia,calle,numero)values(702,'azteca','postal',8632)
insert into direcciones(direccion_id,colonia,calle,numero)values(703,'langrage','esgrima',7531)
insert into direcciones(direccion_id,colonia,calle,numero)values(704,'futuro nogalar','dalia',7842)
insert into direcciones(direccion_id,colonia,calle,numero)values(705,'año de juarez','zarzal',1452)
insert into direcciones(direccion_id,colonia,calle,numero)values(706,'santo domingo','dalia',4536)




insert into Clientes(cliente_id,nombre,Appaterno,Apmaterno,Direccion_Id,Telefono)values(800,'alfonso','rodriguez','alonso',700,81164595)
insert into Clientes(cliente_id,nombre,Appaterno,Apmaterno,Direccion_Id,Telefono)values(801,'samantha','torres','jumenez',701,81164595)
insert into Clientes(cliente_id,nombre,Appaterno,Apmaterno,Direccion_Id,Telefono)values(802,'rodrigo','ramos','alvarez',702,81164595)
insert into Clientes(cliente_id,nombre,Appaterno,Apmaterno,Direccion_Id,Telefono)values(803,'eduardo','castro','romero',703,81164595)
insert into Clientes(cliente_id,nombre,Appaterno,Apmaterno,Direccion_Id,Telefono)values(804,'jesus','molina','fidel',704,81164595)
insert into Clientes(cliente_id,nombre,Appaterno,Apmaterno,Direccion_Id,Telefono)values(805,'alejandro','ortega','navarro',705,81164595)
insert into Clientes(cliente_id,nombre,Appaterno,Apmaterno,Direccion_Id,Telefono)values(806,'fernando','muños','castro',706,81164595)


insert into Sucursales (sucursal_id,Colonia,Calle,numuero,telefono)values(900,'Solidaridad','Cabezada',9863,87452365)
insert into Sucursales (sucursal_id,Colonia,Calle,numuero,telefono)values(901,'Fomerrey113','HOz',8428,81456532)
insert into Sucursales (sucursal_id,Colonia,Calle,Numuero,telefono)values(902,'Del Prado','Monte alto',6845,81145162)
insert into Sucursales (sucursal_id,Colonia,Calle,Numuero,telefono)values(903,'Victoria','Caliza',2148,81456231)
insert into Sucursales (sucursal_id,Colonia,Calle,Numuero,telefono)values(904,'Treviño','diabaza',785,81749563)


insert into Tickets(ticket_id,Sucursal_Id,Id_Venta,Pago_Cliente,Cambio_Cliente)values(9901,900,1000,2500,500)
insert into Tickets(ticket_id,Sucursal_Id,Id_Venta,Pago_Cliente,Cambio_Cliente)values(9902,901,1001,1200,200)
insert into Tickets(ticket_id,Sucursal_Id,Id_Venta,Pago_Cliente,Cambio_Cliente)values(9903,902,1002,1050,50)
insert into Tickets(ticket_id,Sucursal_Id,Id_Venta,Pago_Cliente,Cambio_Cliente)values(9904,903,1003,700,200)
insert into Tickets(ticket_id,Sucursal_Id,Id_Venta,Pago_Cliente,Cambio_Cliente)values(9905,904,1004,1500,0)

insert into venta(Id_Venta,Producto_Id,Id_Empleado,Dia_Venta,Cliente_Id,Precio_Neto)values(1000,500,600,'22/06/2019',800,3000)
insert into venta(Id_Venta,Producto_Id,Id_Empleado,Dia_Venta,Cliente_Id,Precio_Neto)values(1001,501,601,'22/06/2019',801,1000)
insert into venta(Id_Venta,Producto_Id,Id_Empleado,Dia_Venta,Cliente_Id,Precio_Neto)values(1002,502,602,'22/06/2019',802,1000)
insert into venta(Id_Venta,Producto_Id,Id_Empleado,Dia_Venta,Cliente_Id,Precio_Neto)values(1003,503,603,'22/06/2019',803,500)
insert into venta(Id_Venta,Producto_Id,Id_Empleado,Dia_Venta,Cliente_Id,Precio_Neto)values(1004,504,604,'22/06/2019',804,1500)

update Productos set Precio_Producto = 2000 where Producto_Id = 530
update Productos set Precio_Producto = 600 where Producto_Id = 529
update Productos set Precio_Producto = 900 where Producto_Id = 528
update Productos set Precio_Producto = 990 where Producto_Id = 527
update Productos set Precio_Producto = 250 where Producto_Id = 526
update Productos set Precio_Producto = 3200 where Producto_Id = 525
update Productos set Precio_Producto = 2520 where Producto_Id = 524
update Productos set Precio_Producto = 1000 where Producto_Id = 523
update Productos set Precio_Producto = 4000 where Producto_Id = 522
update Productos set Precio_Producto = 3000 where Producto_Id = 521
 
delete from Productos where Producto_Id = 521
delete from Productos where Producto_Id = 522
delete from Productos where Producto_Id = 523
delete from Productos where Producto_Id = 524
delete from Productos where Producto_Id = 525
delete from Productos where Producto_Id = 526
delete from Productos where Producto_Id = 527
delete from Productos where Producto_Id = 528
delete from Productos where Producto_Id = 529
delete from Productos where Producto_Id = 530





 select * from Productos
