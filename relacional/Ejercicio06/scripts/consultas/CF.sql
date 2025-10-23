\c ejercicio06

WITH ganancias_totales AS (

    SELECT 
        nombre_videojuego, 
        SUM(valor) AS ganancia
    FROM compra_videojuego
    GROUP BY nombre_videojuego

    UNION ALL

    Select 
        EXPANSIONES.nombre_videojuego, 
        SUM(compra_expansiones.VALOR) AS ganancias_totales
    FROM 
        compra_expansiones 
    JOIN 
        EXPANSIONES ON compra_expansiones.nombre_expansion = EXPANSIONES.nombre
    GROUP BY 
        EXPANSIONES.nombre_videojuego

)

SELECT
    nombre_videojuego,
    SUM(ganancia) AS ganancia_total
FROM
    ganancias_totales
GROUP BY
    nombre_videojuego
ORDER BY
    ganancia_total DESC
LIMIT 1;

