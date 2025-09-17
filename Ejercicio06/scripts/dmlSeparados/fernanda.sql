\c ejercicio06

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


SELECT * FROM compra_videojuego WHERE email_persona = (SELECT email FROM persona WHERE nombre = 'Fernanda')
