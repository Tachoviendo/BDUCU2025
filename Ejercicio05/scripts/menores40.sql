--Entrar a la BD
\c ejercicio05;

SELECT name, adress, age, sex, marital_status FROM empleados WHERE marital_status = 'Single' AND age < 40;
