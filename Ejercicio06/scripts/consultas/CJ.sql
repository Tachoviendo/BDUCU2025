\c ejercicio06


SELECT 
    email_persona, 
    SUM(valor) as gasto_total
FROM 
    compra_videojuego
GROUP BY 
    email_persona
