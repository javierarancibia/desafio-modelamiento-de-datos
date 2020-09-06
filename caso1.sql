CREATE DATABASE caso1;
\c caso1;

CREATE TABLE trabajadores(id SERIAL PRIMARY KEY, Nombre VARCHAR(100) NOT NULL, rut VARCHAR(100) NOT NULL, direccion VARCHAR(100) NOT NULL);
CREATE TABLE liquidaciones(id SERIAL PRIMARY KEY, sueldo_bruto FLOAT NOT NULL, cotizaciones FLOAT NOT NULL, sueldo_liquido FLOAT NOT NULL);
CREATE TABLE departamentos(id SERIAL PRIMARY KEY, nombre VARCHAR(100) NOT NULL);
CREATE TABLE trabajador_liquidaciones(id SERIAL PRIMARY KEY, id_trabajador INT NOT NULL, id_liquidaciones INT NOT NULL, id_departamento INT NOT NULL);