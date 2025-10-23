\c ejercicio06

SELECT * FROM juega
WHERE email_persona = 'persona1@gmail.com' 
and fecha =(
    SELECT MAX(fecha)
    FROM juega
    WHERE email_persona = 'persona1@gmail.com' 

);
