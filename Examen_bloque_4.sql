/*
    Autor: ROberto Rico Sandoval.
    Fille: Datos de usuarios en un videojuego.
    Date: 11/ 05/ 2023
*/

-- Creación de la BD
CREATE DATABASE registros;

-- Creación de una tabbla.
CREATE TABLE datos_de_usuarios(
id INTEGER PRIMARY KEY AUTOINCREMENT, nombre TEXT, edad INTEGER, 
score REAL, fecha TEXT, rango INTEGER);


--Inserción de datos.
INSERT INTO datos_de_usuarios(
nombre, edad, score, fecha, rango) VALUES("Roberto Sandoval", 24, 10024, "11-05-2023", "SS"),
("Ricardo Zamora", 58, 998, "26-02-2023", "E"),
("Juan Martín", 28, 08, "10-05-2023", "F"),
("Valeria Moonlight", 22, 3226, "22-01-2023", "B"),
("Ximena Lechuga", 29, 8095, "11-04-2023", "S"),
("Kaylo Pérez", 18, 5557, "23-10-2023", "A"),("Donald Glover", 33, 9024, "28-03-2023", "SS"),
("Gladis Jungle", 26, 6057, "19-04-2023", "A"),
("Alessando Blondi", 34, 7389, "28-03-2023", "S"),
("Bob Shower Granjas", 40, 5089, "31-03-2023", "A");

SELECT * FROM datos_de_usuarios;


-- Actualizar datos de la tabla.
UPDATE datos_de_usuarios SET rango = "Cancelado" WHERE rango == "F" OR rango == "E" OR rango == "D";

UPDATE datos_de_usuarios SET rango = "Clasificado" WHERE rango == "C" OR rango == "B" 
OR rango == "A" OR rango == "S" OR rango == "SS";

SELECT * FROM datos_de_usuarios;


-- Eliminación de datos.
DELETE FROM datos_de_usuarios WHERE rango = "Cancelado";

SELECT * FROM datos_de_usuarios;

