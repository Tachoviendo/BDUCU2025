-- Creación de la base de datos -

DROP DATABASE IF EXISTS fabrica_pastas; 

CREATE DATABASE fabrica_pastas;

-- Conexión a la base de datos recién creada --

\c fabrica_pastas;

-- Creación de las tablas principales
CREATE TABLE Persona (
cedula VARCHAR(8) PRIMARY KEY,
nombre VARCHAR(30) NOT NULL,
apellido VARCHAR(30) NOT NULL,
fechaNacimiento DATE NOT NULL
);

CREATE TABLE Direccion (
idDireccion SERIAL PRIMARY KEY,
ciudad VARCHAR(30),
calle VARCHAR(30),
numero INT,
cedula_persona VARCHAR(8),
FOREIGN KEY (cedula_persona) REFERENCES Persona(cedula)
);

CREATE TABLE Telefono (
idTelefono SERIAL PRIMARY KEY,
numero VARCHAR(20) NOT NULL,
tipo VARCHAR(10),
cedula_persona VARCHAR(8),
FOREIGN KEY (cedula_persona) REFERENCES Persona(cedula)
);

-- Creación de las tablas para los roles
CREATE TABLE Cliente (
cedula_persona VARCHAR(8) PRIMARY KEY,
FOREIGN KEY (cedula_persona) REFERENCES Persona(cedula)
);

CREATE TABLE Vendedor (
cedula_persona VARCHAR(8) PRIMARY KEY,
email VARCHAR(30),
FOREIGN KEY (cedula_persona) REFERENCES Persona(cedula)
);


CREATE TABLE Producto (
codigo INT PRIMARY KEY,
nombre VARCHAR(30) NOT NULL,
tipo VARCHAR(30),
medidas DECIMAL,
precioUnitario DECIMAL NOT NULL
);

-- Creación de las tablas con las relaciones de negocio
CREATE TABLE Pedido (
num SERIAL PRIMARY KEY,
fechaHora TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
importeTotal DECIMAL(10, 2),
estado BOOLEAN DEFAULT FALSE,
cedula_cliente VARCHAR(8),
id_vendedor VARCHAR(8),
repartidor VARCHAR(8),
FOREIGN KEY (cedula_cliente) REFERENCES Cliente(cedula_persona),
FOREIGN KEY (id_vendedor) REFERENCES Vendedor(cedula_persona)
);

CREATE TABLE ticketVenta (
cantidad INT NOT NULL,
num_pedido INT,
codigo_producto INT,
FOREIGN KEY (num_pedido) REFERENCES Pedido(num),
FOREIGN KEY (codigo_producto) REFERENCES Producto(codigo),
PRIMARY KEY (codigo_producto, num_pedido)
);
