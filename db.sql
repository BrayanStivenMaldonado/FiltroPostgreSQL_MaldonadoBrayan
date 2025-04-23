--db sql

CREATE TABLE Proveedor(
	id_proveedor SERIAL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	contacto VARCHAR(100) NOT NULL,
	CONSTRAINT proveedor_nombre_unique UNIQUE(nombre)
);

CREATE TABLE Producto(
	id_producto SERIAL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	categoria VARCHAR(100) NOT NULL,
	precio DECIMAL(10,2) NOT NULL CHECK (precio>=0),
	stock INTEGER NOT NULL CHECK (stock>=0),
	id_proveedor INTEGER NOT NULL,
	CONSTRAINT fk_proveedor FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor),
	CONSTRAINT producto_nombre_unique UNIQUE(nombre)	
);

CREATE TABLE Cliente(
	id_cliente SERIAL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	correo VARCHAR(100) NOT NULL,
	telefono VARCHAR(100) NOT NULL,
	CONSTRAINT cliente_correo_unique UNIQUE(correo)
);

CREATE TABLE Venta(
	id_venta SERIAL PRIMARY KEY,
	id_cliente INTEGER NOT NULL,
	fecha TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE DetalleVenta(
	id_venta INTEGER NOT NULL,
	id_producto INTEGER NOT NULL,
	cantidad INTEGER NOT NULL CHECK(cantidad>0),
	PRIMARY KEY (id_venta, id_producto),
	CONSTRAINT fk_venta FOREIGN KEY (id_venta) REFERENCES Venta(id_venta),
	CONSTRAINT fk_producto FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);