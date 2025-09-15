
--Entrar a la BD
\c ejercicio05;

SELECT departament, sex, COUNT(*)
FROM EMPLEADOS
GROUP BY departament, sex;
