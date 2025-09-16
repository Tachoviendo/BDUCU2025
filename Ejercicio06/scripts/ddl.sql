DROP DATABASE IF EXISTS ejercicio06;

CREATE DATABASE ejercicio06;

\c ejercicio06;

CREATE TABLE persona (
    email varchar(50) PRIMARY KEY,
    nombre varchar(60),
    apellido varchar(60),
    fecha_nacimiento DATE,
    password TEXT
);
CREATE TABLE tipos_videojuegos(
    tipo varchar(60) PRIMARY KEY
);

CREATE TABLE videojuegos(
    nombre varchar(60) PRIMARY KEY,
    dificultad INT CHECK (dificultad >1 and dificultad<6),
    descripcion varchar(400),
    costo decimal, 
    tipo_videojuego varchar(60),
    FOREIGN KEY (tipo_videojuego) REFERENCES tipos_videojuegos(tipo)
);

CREATE TABLE EXPANSIONES(
    nombre varchar(60),
    nombre_videojuego varchar(60),
    costo decimal, 
    FOREIGN KEY (nombre_videojuego) REFERENCES videojuegos(nombre),
    PRIMARY KEY (nombre, nombre_videojuego)
);

CREATE TABLE AMIGOS(
    email_persona varchar(50),
    email_amigo varchar(50),
    FOREIGN KEY (email_persona) REFERENCES persona(email),
    FOREIGN KEY (email_amigo) REFERENCES persona(email),
    PRIMARY KEY (email_persona, email_amigo)
);

CREATE TABLE COMPRA (
    id_compra SERIAL PRIMARY KEY,
    email_persona varchar(50),
    nombre_videojuego varchar(60),
    nombre_expansion varchar(60), 
    valor decimal, 
    fecha date, 
    FOREIGN KEY(email_persona) REFERENCES persona(email),
    FOREIGN KEY (nombre_expansion, nombre_videojuego) REFERENCES expansiones(nombre, nombre_videojuego),
    FOREIGN KEY (nombre_videojuego) REFERENCES videojuegos(nombre)
   );

CREATE TABLE juega(
    email_persona varchar(50),
    nombre_videojuego varchar(60),
    fecha date,
    FOREIGN KEY (email_persona) REFERENCES persona(email),
    FOREIGN KEY (nombre_videojuego) REFERENCES videojuegos(nombre),
    PRIMARY KEY (email_persona, nombre_videojuego, fecha)
);
