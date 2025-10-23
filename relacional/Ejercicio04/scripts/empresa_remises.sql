DROP DATABASE IF EXISTS empresa_remises;

CREATE DATABASE empresa_remises;

\c empresa_remises;

CREATE TABLE PERSONA (
    cedula VARCHAR(8) PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL 
);
        
CREATE TABLE CLIENTES (
    cedula_cliente varchar(8) PRIMARY KEY,
    Email VARCHAR(30) NOT NULL,
    Frecuente BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (cedula_cliente) REFERENCES PERSONA(cedula)
);

CREATE TABLE CONTACTO (
    telefono VARCHAR(13),
    cedula_cliente varchar(8),
    FOREIGN KEY (cedula_cliente) REFERENCES CLIENTES(cedula_cliente),
    PRIMARY KEY (telefono, cedula_cliente)
);

CREATE TABLE CHOFER (
    cedula_chofer varchar(8) PRIMARY KEY, 
    edad INT CHECK (edad >= 21),
    licencia VARCHAR(30) NOT NULL,
    FOREIGN KEY (cedula_chofer) REFERENCES PERSONA(cedula)
);

CREATE TABLE COCHE (
    matricula VARCHAR(7) NOT NULL PRIMARY KEY,
    modelo VARCHAR(50) NOT NULL,
    color VARCHAR(30) NOT NULL, 
    cantidadPasajeros INT CHECK (cantidadPasajeros > 0)
);

CREATE TABLE VIAJE(
    idViaje SERIAL PRIMARY KEY,
    cedula_cliente VARCHAR (8) NOT NULL,
    cedula_chofer VARCHAR(8) NOT NULL,
    matricula VARCHAR (7) NOT NULL,
    fechaHoraSalida TIMESTAMP NOT NULL, 
    fechaHoraLLegada TIMESTAMP NOT NULL,
    costo DECIMAL CHECK (costo >= 0),
    FOREIGN KEY (cedula_cliente) REFERENCES CLIENTES(cedula_cliente),
    FOREIGN KEY (cedula_chofer) REFERENCES CHOFER(cedula_chofer),
    FOREIGN KEY (matricula) REFERENCES COCHE(matricula)
);

CREATE TABLE MANTENIMIENTO(
    idMantenimiento SERIAL PRIMARY KEY,
    matricula varchar(7) NOT NULL,
    fechaActual TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    ultimoMantenimiento DATE NOT NULL,
    frecuenciaKilometros INT NOT NULL,
    FOREIGN KEY (matricula) REFERENCES COCHE(matricula)
);

