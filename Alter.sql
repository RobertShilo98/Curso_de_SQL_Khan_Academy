/*
    Autor: Roberto Rico Sandoval.
    Fille: Actualizar y agregar nuevos datos a la tabla.
    Date: 10/ 05/ 2023
*/

CREATE DATABASE Closet;

CREATE TABLE clothes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    design TEXT);
    
INSERT INTO clothes (type, design)
    VALUES ("dress", "pink polka dots");
INSERT INTO clothes (type, design)
    VALUES ("pants", "rainbow tie-dye");
INSERT INTO clothes (type, design)
    VALUES ("blazer", "black sequin");

/*
Alterar tabla clothes, en donde, se agregara una nueva columna llamada price con un tipo de dato REAL u decimal.
*/
ALTER TABLE clothes ADD price REAL;

SELECT * FROM clothes;

/*
Actualizar el valor de la columna price, en diferentes ocasiones, en donde, influye la condicional WHERE sobre 
la columna id.
*/
UPDATE clothes SET price = 10 WHERE id = 1;
UPDATE clothes SET price = 20 WHERE id = 2;
UPDATE clothes SET price = 30 WHERE id = 3;

SELECT * FROM clothes;

/*
Agregar nuevos datos en una fila, en donde, ya se especifica la nueva columna price.
*/
INSERT INTO clothes (type, design, price) VALUES ("Playera deportiva", "rojo y azul pastel", 100);

SELECT * FROM clothes;

