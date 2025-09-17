SELECT 
    CASE 
        WHEN EXTRACT(YEAR FROM AGE(fecha_nacimiento)) >= 18 THEN 'mayor de edad'
        ELSE 'Menor de edad'
    END AS grupo_edad, Count(*)
FROM persona
WHERE email IN (
    SELECT email_persona
    FROM juega
    WHERE nombre_videojuego = 'Project Zomboid'
)
GROUP BY grupo_edad;



