
\c ejercicio06

INSERT INTO compra_videojuego(email_persona, nombre_videojuego, valor, fecha)
VALUES(
    (SELECT email FROM persona WHERE nombre = 'Gonzalo'),
    'Battlefield 2042', 
    (SELECT costo FROM videojuegos WHERE nombre = 'Battlefield 2042'),
    CURRENT_DATE
);


SELECT * FROM compra_videojuego WHERE email_persona = (SELECT email FROM persona WHERE nombre = 'Gonzalo');
