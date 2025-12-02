CREATE TABLE IF NOT EXISTS CLIENTES (
    cedula VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    fecha_nacimiento DATE,
    telefono VARCHAR(20)
);

INSERT INTO CLIENTES VALUES 
('12345678', 'Juan', 'Pérez', '1990-05-15', '099123456'),
('23456789', 'María', 'González', '1985-08-22', '099234567'),
('34567890', 'Carlos', 'Rodríguez', '1992-11-10', '099345678'),
('45678901', 'Ana', 'Martínez', '1988-03-07', '099456789'),
('56789012', 'Luis', 'Fernández', '1995-12-30', '099567890');
