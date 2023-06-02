/*
    Autor: Roberto Rico Sandoval.
    Fille: Nombrar el proceso de una consulta y buscar los valores del proceso de la consulta agrupada.
    Date: 29/ 03/ 2023
*/

CREATE DATABASE Exercise;

CREATE TABLE exercise_logs
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    minutes INTEGER, 
    calories INTEGER,
    heart_rate INTEGER);

INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 30, 115, 110);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 10, 45, 105);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("dancing", 15, 200, 120);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("dancing", 15, 165, 120);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("tree climbing", 30, 70, 90);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("tree climbing", 25, 72, 80);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("rowing", 30, 70, 90);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("hiking", 60, 80, 85);

SELECT * FROM exercise_logs;

/*- Consultar en la tabla exercise_logs todos los tipos de valores en la tabla, 
sumar los datos de la columna calorias con relación a su tipo de valor, 
renombrar este proceso como: "total_calories, ordenar y agrupar la tabla 
de "manera alfabetica y de forma descendente por el tipo de valor (types).*/
SELECT type, SUM(calories) AS total_calories FROM exercise_logs GROUP BY type;

/*Mostrar y ejecutar la petición solo cuando el proceso llamado total_calories sea mayor 
a 150 (Solo funciona con el ordenamiento de HAVING para nombramiento de procesos).*/
SELECT type, SUM(calories) AS total_calories FROM exercise_logs
    GROUP BY type
    HAVING total_calories > 150;

/*- Consultar en la tabla exercise_logs todos los tipos de valores en la tabla, 
calcular el promedio (media aritmética) de los datos de la columna calorias con relación a su tipo de valor, 
renombrar este proceso como: "avg_calories", ordenar y agrupar la tabla 
de "manera alfabetica y de forma descendente por el método HAVING, 
siempre y cuando el proceso llamado avg_calories sea mayor a 70.*/
SELECT type, AVG(calories) AS avg_calories FROM exercise_logs
    GROUP BY type
    HAVING avg_calories > 70; 

/*- Mostrar los datos de la tabla exercise_logs, ordenados de forma alfabetica y descendentemente 
solo cuando tengan más o igual a 2 filas de un mismo tipo de valor

Comando COUNT = Contar las veces que se repite un mismo dato en una tabla o las veces que 
se repite una fila en una tabla.*/    
SELECT type FROM exercise_logs GROUP BY type HAVING COUNT(*) >= 2;

