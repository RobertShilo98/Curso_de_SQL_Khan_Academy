/*
    Autor: Roberto Rico Sandoval
    Date: 01/ 05/ 2023
    Fille: Manejo de la sentencia Case - When y Count.
*/

CREATE TABLE student_grades (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    number_grade INTEGER,
    fraction_completed REAL);
    
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winston", 90, 0.805);

INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winnefer", 95, 0.901);

INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winsteen", 85, 0.906);

INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Wincifer", 66, 0.7054);

INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winster", 76, 0.5013);
    
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winstonia", 82, 0.9045);

/* Documentación:

    Selecciona la columna name, number_grade, ROUND(fraction_completed*100). 
    En el caso de "fraction_complete", esta se ve redondeada y multiplicada por 100, 
    para sacar el porcentaje. Esta operación se mostrará n una nueva columna llamada "percent_completed". 
    
*/

SELECT name, number_grade, ROUND(fraction_completed*100) AS percent_completed FROM student_grades;

/* Documentación:

    Contamos con el comando "case", las ocurrencias cuando number_grade sea mayor a 90,
    obteniendo (THEN), una letra "A", y asi susesivamente con los casos. Si, ningun caso
    se cumple, entonces, se enviara una letra "F". Esta suseción de casos, puede ser llamada
    como letter_grade que al mismo tiempo, este nombramiento nos sirve como un contenedor
    o variable a la cual se le asigna un valor por medio del comando "THEN". 
    AL final, como resultado obtenemos una tabla agrupada por la nueva columna de 
    letter_grade y el contador que lleve la susesión de casos presentados.
    
*/

SELECT COUNT(*),
CASE
WHEN number_grade > 90 THEN "A"
WHEN number_grade > 80 THEN "B"
WHEN number_grade > 70 THEN "C"
ELSE "F"
END AS "letter_grade"
FROM student_grades
GROUP BY(letter_grade);

