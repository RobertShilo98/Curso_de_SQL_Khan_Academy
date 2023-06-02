/* Create table about the people and what they do here */

/*
    Autor: Roberto Rico Sandoval.
    Fille: Unión de tablas externas e internas.
    Date: 21/ 05/ 2023
    
    1) Creación de bases de datos.
    2) Inserción de datos.
    3) Unión de tablas relacionales.
*/

CREATE DATABASE relaciones_de_tablas;

CREATE TABLE famosos_cine(id INTEGER PRIMARY KEY AUTOINCREMENT, nombre TEXT, edad INTEGER, 
pais TEXT, peliculas TEXT, situacion_sentimental TEXT);


INSERT INTO famosos_cine (nombre, edad, pais, peliculas, situacion_sentimental) VALUES 
("Al Pacino", 83, "EEUA", "Scar Face", "Casado"),
("Jhonny Depp", 59, "EEUA", "Piratas del Caribe", "Divorciado"),
("Leonardo DiCaprio", 48, "EEUA", "Titanic", "Casado"),
("Tenoch Huerta", 42, "México", "Black Phanter: Wakanda Forever", "Casado"),
("Benny Emmanuel", 26, "México", "Chicuarotes", "Soltero"),
("Yoo Ah-in", 36, "Corea del sur", "#vivo", "Soltero"),
("Martha Higareda", 39, "México", "Amar te duele", "Soltera");

SELECT * FROM famosos_cine;


CREATE TABLE cantantes(id INTEGER PRIMARY KEY AUTOINCREMENT, nombre TEXT, edad INTEGER, 
pais TEXT, cancion_popular TEXT, estilo TEXT, id_cine INTEGER);


INSERT INTO cantantes (nombre, edad, pais, cancion_popular, estilo, id_cine) VALUES 
("Technicolor Fabrics", 16, "México", "Globos", "Rock Indie", null),
("Zoé", 29, "México", "Soñe", "Rock Indie", 7),
("Enjambre", 22, "México", "Mania Cardiaca", "Rock Indie", null),
("Far Caspian", 8, "Irlanda", "Blue", "Rock Indie", null),
("Darius", 9, "Fráncia", "Feel Right", "Jazz Eléctronico", null),
("Super Junior", 18, "Corea del sur", "Magic", "Boy Band Korea", 6);

SELECT * FROM cantantes;


CREATE TABLE escritores(id INTEGER PRIMARY KEY AUTOINCREMENT, nombre TEXT, edad INTEGER,
pais TEXT, libro_popular TEXT, estilo TEXT);


INSERT INTO escritores(nombre, edad, pais, libro_popular, estilo) VALUES 
("J. K. Rowling", 57, "Inglaterra", "Harry Potter", "Fantasia - Magia"),
("J. R. R. Tolkien", 80, "Sudáfrica", "El señor de los anillos", "Fantasia - Magia"),
("George Lucas", 79, "EEUA", "Star Wars", "Fantasia Espacial"),
("Carlos Fuentes", 84, "México", "Aura", "Literatura moderna"),
("Octavio Paz", 84, "México", "¿Águila o sol?", "Literatura moderna"),
("Isabel Allende", 80, "Chile", "La casa de los espiritus", "Literatura moderna");

SELECT * FROM escritores;


CREATE TABLE personajes_de_fantasia(id INTEGER PRIMARY KEY AUTOINCREMENT, nombre TEXT, edad INTEGER, 
pais TEXT, universo TEXT, escritores_id INTEGER, cine_id INTEGER);


INSERT INTO personajes_de_fantasia(nombre, edad, pais, universo, escritores_id, cine_id) VALUES 
("Spyderman", 20, "EEUA", "EL Sorprendente hombre araña", null, null),
("Dahrt Vader", 50, "Estrella de la Muerte", "Star Wars", 3, null),
("Capitan Jack Sparrow", 40, "El océano xD", "Piratas del caribe", null, 2),
("El momox", 38, "Su calabozo xD", "El Tik Tok", null, null),
("Sauron", 1000, "Mordor", "El señor de los anillos", 2, null),
("Tony Montana", 30, "EEUA", "Scar Face", null, 1);

SELECT * FROM personajes_de_fantasia;

-- Creación de consultas relacionales en la base de datos.

/* Aquí se muestran canciones de cantantes famosos que suenan en alguna película de cine.*/
SELECT famosos_cine.nombre, famosos_cine.peliculas, cantantes.nombre, cantantes.id_cine FROM famosos_cine
JOIN cantantes
ON famosos_cine.id = cantantes.id_cine;


/* Mostrar las canciones que no salen en el cine.*/
SELECT cantantes.nombre, cantantes.cancion_popular, cantantes.id_cine FROM cantantes
WHERE cantantes.id_cine IS null;


/* Mostrar columnas relacionadas ordenadas a la derecha. En donde, un personaje de fantasia se relaciona con un universo cinematográfico*/

SELECT famosos_cine.nombre, famosos_Cine.peliculas, personajes_de_fantasia.nombre, 
personajes_de_fantasia.universo, personajes_de_fantasia.cine_id FROM famosos_cine
LEFT OUTER JOIN personajes_de_fantasia
ON famosos_cine.id = personajes_de_fantasia.cine_id
WHERE personajes_de_fantasia.cine_id IS NOT null;

