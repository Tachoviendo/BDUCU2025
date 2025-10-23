\c ejercicio06

SELECT nombre, apellido 
FROM persona   
WHERE email in (
    SELECT email_amigo 
    FROM amigos 
    WHERE email_persona = 'persona1@gmail.com');

