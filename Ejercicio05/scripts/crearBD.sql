DROP DATABASE IF EXISTS ejercicio05;

CREATE DATABASE ejercicio05;

\c ejercicio05;

--crear tabla de empleados en la bd.
CREATE TYPE genero AS ENUM ('Male', 'Female', 'Other');
CREATE TYPE seguro AS ENUM ('None','Both','Life', 'Medical');
CREATE TYPE estado_civil AS ENUM ('Divorced', 'Widowed', 'Single', 'Married');

CREATE TABLE EMPLEADOS(
    id_empleado SERIAL PRIMARY KEY,
    name varchar(50),
    adress varchar(50),
    salary decimal, 
    DOJ date,
    DOB date,
    age int, 
    sex genero,
    dependents int,
    HRA decimal,
    DA decimal, 
    PF decimal,
    gress_salary decimal,
    insurance seguro, 
    marital_status estado_civil,
    in_company_years int,
    years_of_experiencie int, 

    --estos dos últimos también podrían ser un tipo dentro de nuestra base de datos. Los manejo como varchar por mas simplicidad.
    departament varchar(50),
    position varchar(50)

);

\copy EMPLEADOS FROM 'Empleados.csv' WITH (FORMAT CSV, HEADER);


