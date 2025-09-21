\c ejercicio06

SELECT 
    nombre_videojuego, 
    count(*) AS expansiones
from 
    Expansiones
GROUP BY 
    nombre_videojuego
