
--Entrar a la BD
\c ejercicio05;

SELECT sex, AVG(age)
FROM empleados
GROUP BY sex;
