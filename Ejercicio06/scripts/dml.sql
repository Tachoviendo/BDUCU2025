\c ejercicio06
-- Alejandro adquiere juego Project Zomboid.
INSERT INTO compra_videojuego(email_persona, nombre_videojuego, valor, fecha)
VALUES (
    (SELECT email FROM persona WHERE nombre = 'Alejandro'),
    'Project Zomboid',
    (SELECT costo FROM videojuegos WHERE nombre = 'Project Zomboid'),
    CURRENT_DATE
);

-- Alejandro adquiere la expansión Battlefield 2042 Ultimate Edition
INSERT INTO compra_expansiones (email_persona, nombre_expansion, valor, fecha)
VALUES(
    (SELECT email FROM persona WHERE nombre = 'Alejandro'),
    'Battlefield 2042 Ultimate Edition',
    (SELECT costo FROM expansiones WHERE nombre = 'Battlefield 2042 Ultimate Edition'),
    CURRENT_DATE
);

-- Fernanda adquiere Magic: The Gathering Arena y Tower of Fantasy's
INSERT INTO compra_videojuego(email_persona, nombre_videojuego, valor, fecha)
VALUES (
    (SELECT email FROM persona WHERE nombre = 'Fernanda'),
    'Magic: The Gathering Arena',
    (SELECT costo FROM videojuegos WHERE nombre = 'Magic: The Gathering Arena'),
    CURRENT_DATE
),
(
    (SELECT email FROM persona WHERE nombre = 'Fernanda'),
    'Tower of Fantasy',
    (SELECT costo FROM videojuegos WHERE nombre = 'Tower of Fantasy'),
    CURRENT_DATE
);

--Magic: The Gathering Arena pasa a valer $500.

UPDATE videojuegos 
SET costo = 500
WHERE nombre = 'Magic: The Gathering Arena';

--  Sergio adquiere Magic: The Gathering Arena.
INSERT INTO compra_videojuego(email_persona, nombre_videojuego, valor, fecha)
VALUES(
    (SELECT email FROM persona WHERE nombre = 'Sergio'),
    'Magic: The Gathering Arena',
    (SELECT costo FROM videojuegos WHERE nombre = 'Magic: The Gathering Arena'),
    CURRENT_DATE
);

-- Gonzalo adquiere Battlefield 2042.
INSERT INTO compra_videojuego(email_persona, nombre_videojuego, valor, fecha)
VALUES(
    (SELECT email FROM persona WHERE nombre = 'Gonzalo'),
    'Battlefield 2042', 
    (SELECT costo FROM videojuegos WHERE nombre = 'Battlefield 2042'),
    CURRENT_DATE
);

--Battlefield 2042 disminuye su precio en $200

UPDATE videojuegos 
SET costo = 200
WHERE nombre = 'Battlefield 2042';

-- Gonzalo adquiere Battlefield la expansión Battlefield 2042 Ultimate Edition.
INSERT INTO compra_expansiones (email_persona, nombre_expansion, valor, fecha)
VALUES(
    (SELECT email FROM persona WHERE nombre = 'Gonzalo'),
    'Battlefield 2042 Ultimate Edition',
    (SELECT costo FROM expansiones WHERE nombre = 'Battlefield 2042 Ultimate Edition'),
    CURRENT_DATE
);

-- inflación

UPDATE videojuegos 
SET costo = costo*1.10;











