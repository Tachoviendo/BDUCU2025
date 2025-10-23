DROP DATABASE IF EXISTS ejercicio05;

CREATE DATABASE ejercicio10;

\c ejercicio10;

CREATE TABLE PAIS(
    id VARCHAR(2) NOT NULL,
    nombre VARCHAR(10) NOT NULL,
    PRIMARY KEY (id, nombre)

);

CREATE TABLE CLIENTES(
    id VARCHAR(10) NOT NULL, 
    nombre_completo VARCHAR(55) NOT NULL, 
    fecha_nacimiento DATE NOT NULL, 
    direccion VARCHAR(60) NOT NULL, 
    localidad_codpostal VARCHAR(100) NOT NULL, 
    telefono VARCHAR(20) NOT NULL, 
    email VARCHAR(100) NOT NULL, 
    fecha_alta DATE NOT NULL, 
    grupo_clientes CHAR(1) NOT NULL,
    id_pais VARCHAR(2), 
    FOREIGN KEY (id_pais) REFERENCES PAIS(id)
);

CREATE TABLE PROVEEDORES (
    id VARCHAR(10) PRIMARY KEY, 
    nombre VARCHAR(55) NOT NULL, 
    direccion VARCHAR(60) NOT NULL,
    referente VARCHAR(60) NOT NULL,
    telefono VARCHAR(50) NOT NULL, 
    email VARCHAR(60) NOT NULL, 
    localidad_depto VARCHAR(100) NOT NULL,
    id_pais VARCHAR(2),
    grupo_proveedores CHAR(1),
    FOREIGN KEY (id_pais) REFERENCES PAIS(id)

);

CREATE TABLE PRODUCTOS(
    id VARCHAR(10) PRIMARY KEY, 
    nombre VARCHAR(55) NOT NULL, 
    fecha_ingreso DATE NOT NULL, 
    cantidad INT NOT NULL, 
    unidad VARCHAR(2), 
    precio_unitario INT NOT NULL,
    id_proveedor VARCHAR(10) NOT NULL, 
    grupo_productos VARCHAR(3),
    FOREIGN KEY (id_proveedor) REFERENCES PROVEEDORES(id)
);

CREATE TABLE VENTAS(
    id VARCHAR(10) PRIMARY KEY, 
    fecha_venta DATE NOT NULL, 
    id_cliente VARCHAR(10) NOT NULL, 
    importe INT NOT NULL, 
    tipo_pago VARCHAR(2) NOT NULL, 
    entrega_domicilio CHAR(1) NOT NULL, 
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id)
);

