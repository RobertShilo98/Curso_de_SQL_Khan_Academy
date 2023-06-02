/*
    Autor: Roberto Rico Sandoval.
    Fille: Práctica 2-3.
    Date: 30/ 03/ 2023
*/

CREATE DATABASE Librery;

CREATE TABLE books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    author TEXT,
    title TEXT,
    words INTEGER);
    
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Philosopher's Stone", 79944);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Chamber of Secrets", 85141);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Prisoner of Azkaban", 107253);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Goblet of Fire", 190637);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Order of the Phoenix", 257045);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Half-Blood Prince", 168923);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Deathly Hallows", 197651);

INSERT INTO books (author, title, words)
    VALUES ("Stephenie Meyer", "Twilight", 118501);
INSERT INTO books (author, title, words)
    VALUES ("Stephenie Meyer", "New Moon", 132807);
INSERT INTO books (author, title, words)
    VALUES ("Stephenie Meyer", "Eclipse", 147930);
INSERT INTO books (author, title, words)
    VALUES ("Stephenie Meyer", "Breaking Dawn", 192196);
    
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "The Hobbit", 95022);
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "Fellowship of the Ring", 177227);
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "Two Towers", 143436);
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "Return of the King", 134462);

/*- Seleccionar la columna author, Función Suma de los datos incluidos en la columna words (SUM(words)), 
renombramos a este querry o proceso como total_words desde la tabla books. Ordenamos ascendentemente 
por la tabla author teniendo en cuenta que el proceso total_words tiene que ser mayor a 1,000,000*/

SELECT author, SUM(words) AS total_words FROM books GROUP BY author HAVING total_words > 1000000;

/*- Seleccionar la columna author, Función promedio o media aritmética de los datos incluidos en la columna words 
(AVG(words)), renombramos a este querry o proceso como avg_words desde la tabla books. Ordenamos ascendentemente 
por la tabla author teniendo en cuenta que el proceso avg_words tiene que ser mayor a 150,000*/

SELECT author, AVG(words) AS avg_words FROM books GROUP BY author HAVING avg_words > 150000;

