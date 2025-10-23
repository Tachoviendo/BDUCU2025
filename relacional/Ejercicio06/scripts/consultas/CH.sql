\c ejercicio06
WITH gastos_totales AS(
    SELECT 
        email_persona, 
        SUM(valor) AS gasto
    FROM 
        compra_videojuego
    GROUP BY 
        email_persona

    UNION ALL
        
    SELECT 
        email_persona,
        SUM(valor) AS gasto
    FROM 
        compra_expansiones  
    GROUP BY 
        email_persona  


)

SELECT 
    email_persona, 
    SUM(gasto) AS gasto_total
FROM 
    gastos_totales
WHERE 
    email_persona = 'persona1@gmail.com'
GROUP BY 
    email_persona;


