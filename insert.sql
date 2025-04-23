--insert sql
insert into Proveedor(id_proveedor, nombre, contacto) values
('xiaomi','example1@gmail.com'),
('samsung','example2@gmail.com'),
('apple','example3@gmail.com'),
('huawei','example4@gmail.com'),
('alcatel','example5@gmail.com'),
('motorola','example6@gmail.com'),
('redmi','example7@gmail.com');

insert into Producto(id_producto, nombre, categoria, precio, stock, id_proveedor) values
('realme', 'telefono', 42.99, 30, 1),
('a30', 'telefono', 150.99, 30, 2),
('iphone 12', 'telefono', 123.99, 30, 3),
('mate x6', 'telefono', 110.99, 30, 4),
('alcatel 1s', 'telefono', 87.99, 30, 5),
('moto g5', 'telefono', 60.99, 30, 6),
('airbuds pro', 'audifonos', 12.99, 30, 7),
('iphone 17', 'telefono', 200.99, 2, 3),
('iphone 14', 'telefono', 123.99, 3, 3);

insert into Cliente(nombre, correo, telefono) values
('Jhonatan Omaña', 'example1@gmail.com', '12345678'),
('Brayan Maldonado', 'example2@gmail.com', '12345678'),
('Freiler Ortega', 'example3@gmail.com', '12345678'),
('Jaime Barrera', 'example4@gmail.com', '12345678'),
('Camilo Machuca', 'example5@gmail.com', '12345678'),
('Zully Ortiz', 'example6@gmail.com', '12345678'),
('Jerxon Correa', 'example7@gmail.com', '12345678'),
('Luis Henao', 'example8@gmail.com', '12345678');

insert into Venta(id_cliente, fecha) values
(1,'2025-04-12 10:10.00'),
(2,'2025-03-11 12:22.00'),
(3,'2025-03-22 08:10.00'),
(4,'2025-02-01 08:50.00'),
(5,'2025-03-12 11:20.00'),
(6,'2025-03-12 10:30.00'),
(7,'2025-02-12 09:15.00'),
(7,'2025-04-12 10:47.00'),
(7,'2025-03-12 08:22.00'),
(2,'2025-02-12 09:59.00');

insert into DetalleVenta(id_venta,id_producto,cantidad) values
(1,1,12),
(2,2,2),
(3,3,2),
(4,4,5),
(5,5,3),
(6,6,1),
(7,7,3),
(8,2,1),
(9,6,2),
(10,2,1);