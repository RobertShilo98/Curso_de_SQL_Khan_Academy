/*
    Autor: Roberto Rico Sandoval.
    Fille: Práctica 2 - 1.
    Date: 29/ 03/ 2023
*/

CREATE DATABASE Muisic;

CREATE TABLE songs (
    id INTEGER PRIMARY KEY,
    title TEXT,
    artist TEXT,
    mood TEXT,
    duration INTEGER,
    released INTEGER);
    
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Bohemian Rhapsody", "Queen", "epic", 60, 1975);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Let it go", "Idina Menzel", "epic", 227, 2013);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("I will survive", "Gloria Gaynor", "epic", 198, 1978);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Twist and Shout", "The Beatles", "happy", 152, 1963);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("La Bamba", "Ritchie Valens", "happy", 166, 1958);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("I will always love you", "Whitney Houston", "epic", 273, 1992);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Sweet Caroline", "Neil Diamond", "happy", 201, 1969);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Call me maybe", "Carly Rae Jepsen", "happy", 193, 2011);

/*- Consultar los valores de la columna title.*/
SELECT title FROM songs;

/*- Consultar los valores de la columna title cuando mantengan un valor "epic" 
en la columna mood ó la columna released sea mayor a 1990.*/
SELECT title FROM songs WHERE mood == 'epic' OR released > 1990;

/*- Consultar los valores de la columna title cuando mantengan un valor "epic" 
en la columna mood y la columna released sea mayor a 1990 y la columna duration sea menor a 290.*/
SELECT title FROM songs WHERE mood == 'epic' AND released > 1990 AND duration < 240;

