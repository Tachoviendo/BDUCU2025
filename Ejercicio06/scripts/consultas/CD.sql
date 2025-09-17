\c ejercicio06

SELECT fecha_nacimiento, COUNT(*)
FROM persona    
WHERE email IN (
    SELECT email_persona 
    FROM juega 
    WHERE nombre_videojuego = 'Project Zomboid'
)
GROUP BY fecha_nacimiento;

