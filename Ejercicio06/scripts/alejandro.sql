\c ejercicio06

INSERT INTO compra_videojuego(email_persona, nombre_videojuego, valor, fecha)
VALUES (
    (SELECT email FROM persona WHERE nombre = 'Alejandro'),
    'Project Zomboid',
    (SELECT costo FROM videojuegos WHERE nombre = 'Project Zomboid'),
    CURRENT_DATE
);

SELECT * FROM compra_videojuego WHERE email_persona = (SELECT email FROM persona WHERE nombre = 'Alejandro')
