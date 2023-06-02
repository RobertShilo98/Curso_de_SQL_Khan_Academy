/*
Autor: Roberto Rico Sandoval.
Fille: Creación de tablas en la BD.
Date: 24/ 02/ 2023
*/

CREATE DATABASE cinema;

CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);

    INSERT INTO movies VALUES (1, "Avatar", 2009);
    INSERT INTO movies VALUES (2, "Titanic", 1997);
    INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
    INSERT INTO movies VALUES (4, "Shrek 2", 2004);
    INSERT INTO movies VALUES (5, "The Lion King", 1994);
    INSERT INTO movies VALUES (6, "Disney's Up", 2009);
 
--Realizar una consulta que seleccione todos los campos, filas y columnas de la tabla.
SELECT * FROM movies;

/*
1) Consulta todo el contenido de la tabla.
2) Condiciona el contenido de la tabla, en donde, el año sea mayor o igual a 2000.
3) Ordena el resultado de menor a mayor.
*/
SELECT * FROM movies WHERE release_year >= 2000 ORDER BY release_year;

