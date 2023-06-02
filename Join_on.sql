
CREATE DATABASE informacion;

CREATE TABLE persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER);
/*
    Autor: Roberto Rico Sandoval.
    Fille: Implementación de JOIN ON para unir tablas relacionadas.
    Date: 13/ 05/ 2023
*/ 

INSERT INTO persons (name, age) VALUES ("Bobby McBobbyFace", 12);
INSERT INTO persons (name, age) VALUES ("Lucy BoBucie", 25);
INSERT INTO persons (name, age) VALUES ("Banana FoFanna", 14);
INSERT INTO persons (name, age) VALUES ("Shish Kabob", 20);
INSERT INTO persons (name, age) VALUES ("Fluffy Sparkles", 8);
INSERT INTO persons (name, age) VALUES ("Eduardo Mariguas", 28);


CREATE table hobbies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);
    

INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");
INSERT INTO hobbies (person_id, name) VALUES (6, "Rolar porros");


/* Seleccionar los datos de la columna name en la tabla persons, seleccionar los datos de la columna name
en la tabla hobbies. Unir a la tabla persons con hobbies mediante la columna id de la tabla persons y la
columna id de la tabla hobbies.*/
SELECT persons.name, hobbies.name FROM persons 
JOIN hobbies
ON persons.id = hobbies.person_id;


/* Seleccionar los datos de la columna name en la tabla persons, seleccionar los datos de la columna name
en la tabla hobbies. Unir a la tabla persons con hobbies mediante la columna id de la tabla persons y la
columna id de la tabla hobbies. Despues, delimitar la consulta mediante una condicional, en donde, la 
columna name en la tabla persons asigne el valor de "Bobby McBobbyFace"*/
SELECT persons.name, hobbies.name FROM persons 
JOIN hobbies
ON persons.id = hobbies.person_id
WHERE persons.name == "Bobby McBobbyFace";

