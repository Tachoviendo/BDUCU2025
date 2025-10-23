\c ejercicio06

SELECT nombre_videojuego, COUNT(*)
FROM juega   
WHERE nombre_videojuego = 'Project Zomboid'
GROUP BY nombre_videojuego;
