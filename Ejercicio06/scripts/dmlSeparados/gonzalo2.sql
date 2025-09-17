
\c ejercicio06

INSERT INTO compra_expansiones (email_persona, nombre_expansion, valor, fecha)
VALUES(
    (SELECT email FROM persona WHERE nombre = 'Gonzalo'),
    'Battlefield 2042 Ultimate Edition',
    (SELECT costo FROM expansiones WHERE nombre = 'Battlefield 2042 Ultimate Edition'),
    CURRENT_DATE
);


SELECT * FROM compra_expansiones WHERE email_persona = (SELECT email FROM persona WHERE nombre = 'Gonzalo');
