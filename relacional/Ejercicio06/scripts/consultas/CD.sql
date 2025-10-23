SELECT EXTRACT(YEAR FROM AGE(fecha_nacimiento)) AS edad, COUNT(*)
FROM persona
WHERE email IN (
    SELECT email_persona
    FROM juega
    WHERE nombre_videojuego = 'Project Zomboid'
)
GROUP BY edad;


