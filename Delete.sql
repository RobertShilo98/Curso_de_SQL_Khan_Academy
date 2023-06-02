/*
    Autor: Roberto Rico Sandoval.
    Fille: Actualizar y eliminar datos de la tabla.
    Date: 10/ 05/ 2023
*/

CREATE DATABASE Librero;

CREATE table documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    content TEXT,
    author TEXT);
    
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Fancy Stuff", "Ceiling wax, dragon wings, etc.");
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Living Things", "They're located in the left ear, you know.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Pirate Recipes", "Cherry pie, apple pie, blueberry pie.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Boat Supplies", "Rudder - guitar. Main mast - bed post.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Things I'm Afraid Of", "Talking to my parents, the sea, giant pirates, heights.");

/*
Actualizar datos en la tabla documents en o sobre la columna author = "Jackie Draper", en donde, 
el nuevo dacto es Jackie Draper, mientras la columna author tenga una dato igual a "Jackie Paper".
*/    
SELECT * FROM documents;

UPDATE documents SET author = "Jackie Draper" WHERE author = "Jackie Paper";

SELECT * FROM documents;

/*
Elminar datos de la tabla documents mientras la columna  title = "Things I'm Afraid Of".
*/  
DELETE FROM documents WHERE title = "Things I'm Afraid Of";

SELECT * FROM documents;


