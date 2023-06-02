/*
Autor: Roberto Rico Sandoval.
Fille: Creación de tablas en la BD.
Date: 24/ 02/ 2023
*/

--Crear base de datos.
CREATE DATABASE librero;

--Crear tabla.
CREATE TABLE libros (id INTEGER, names TEXT, rating REAL);

--insertar datos en la tabla.
    INSERT INTO libros VALUES 
    (1, "Harry Potter", 4.5), 
    (2, "Aura", 4.8), 
    (3, "Marcha", 4.5);

