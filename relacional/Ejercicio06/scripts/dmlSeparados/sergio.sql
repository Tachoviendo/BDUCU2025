\c ejercicio06

INSERT INTO compra_videojuego(email_persona, nombre_videojuego, valor, fecha)
VALUES(
    (SELECT email FROM persona WHERE nombre = 'Sergio'),
    'Magic: The Gathering Arena',
    (SELECT costo FROM videojuegos WHERE nombre = 'Magic: The Gathering Arena'),
    CURRENT_DATE
);


SELECT * FROM compra_videojuego WHERE email_persona = (SELECT email FROM persona WHERE nombre = 'Sergio');
