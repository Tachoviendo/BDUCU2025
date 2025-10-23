
--Entrar a la BD
\c ejercicio05;

Select departament, COUNT(*)
FROM EMPLEADOS
GROUP BY departament;


