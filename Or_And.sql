/*
	Autor: Roberto Rico Sandoval.
	Fille: Bases de datos / Consultas complejas (Hard Querry).
	Date: 29/ 03/ 2023
    
DOCUMENTACIÓN:

- PRIMARY KEY = Definición de llave primaria (Solo puede existir 1 llave primaria en 1 tabla).

- AUTOINCREMENT = Indica que el dato autoincrementara por sí solo, sin necesidad de incersión de datos.

*/

CREATE DATABASE Exercise;

CREATE TABLE exercise_logs
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    minutes INTEGER, 
    calories INTEGER,
    heart_rate INTEGER);


INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 30, 100, 110);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 10, 30, 105);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("dancing", 15, 200, 120);

SELECT * FROM exercise_logs WHERE calories > 50 ORDER BY calories;

/* AND */
SELECT * FROM exercise_logs WHERE calories > 50 AND minutes < 30;

/* OR */
SELECT * FROM exercise_logs WHERE calories > 50 OR heart_rate > 100;

