\c ejercicio06

SELECT count(*) as personas_sin_amigos
FROM persona   
WHERE email NOT IN (
    SELECT email_persona
    FROM amigos
);
