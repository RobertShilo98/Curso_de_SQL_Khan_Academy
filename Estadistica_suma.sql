/*
Autor: Roberto Rico Sandoval.
Fille: Estadistíca por el método suma reservado de SQL.
Date: 24/ 02/ 2023
*/

CREATE DATABASE lista;

CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutos INTEGER);

    INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
    INSERT INTO todo_list VALUES (2, "vacuuming", 20);
    INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);
    INSERT INTO todo_list VALUES (4, "Preparar tacos", 45);

--Sumar todos los registros de (minutes).
SELECT sum(minutos) FROM todo_list;

