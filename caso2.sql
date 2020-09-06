CREATE DATABASE caso2;
\c caso2;

-- Creacion de tablas
CREATE TABLE alumnos(id SERIAL PRIMARY KEY, nombre VARCHAR(100) NOT NULL, rut VARCHAR(100) NOT NULL);
CREATE TABLE cursos(id SERIAL PRIMARY KEY, nombre VARCHAR(100) NOT NULL);
CREATE TABLE pruebas(id SERIAL PRIMARY KEY, ramo VARCHAR(100) NOT NULL);
CREATE TABLE profesores(id SERIAL PRIMARY KEY, Nombre VARCHAR(100) NOT NULL);
CREATE TABLE departamentos(id SERIAL PRIMARY KEY, Nombre VARCHAR(100) NOT NULL);
CREATE TABLE alumnos_cursos(id SERIAL PRIMARY KEY, id_alumno INT NOT NULL, id_curso INT NOT NULL, FOREIGN KEY(id_alumno) REFERENCES alumnos(id), FOREIGN KEY(id_curso) REFERENCES cursos(id));
CREATE TABLE alumnos_pruebas(id SERIAL PRIMARY KEY, id_alumno INT NOT NULL, puntaje FLOAT NOT NULL, id_prueba NOT NULL, FOREIGN KEY(id_alumno) REFERENCES alumnos(id), FOREIGN KEY(id_prueba) REFERENCES pruebas(id));
CREATE TABLE pruebas_profesores(id SERIAL PRIMARY KEY, id_prueba INT NOT NULL,id_profesor NOT NULL, FOREIGN KEY(id_prueba) REFERENCES pruebas(id), FOREIGN KEY(id_profesor) REFERENCES profesores(id));
CREATE TABLE profesores_departamentos(id SERIAL PRIMARY KEY, id_profesor INT NOT NULL, id_departamento INT NOT NULL, FOREIGN KEY(id_profesor) REFERENCES profesores(id), FOREIGN KEY(id_departamento) REFERENCES departamentos(id));