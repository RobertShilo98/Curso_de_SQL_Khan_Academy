/*
Autor: Roberto Rico Sandoval.
Fille: Práctica 1.
Date: 25/ 02/ 2023
*/

CREATE DATABASE restaurante_mexicano;

CREATE TABLE antojitos_mexicanos(id INTEGER PRIMARY KEY, tipo_comida TEXT, cantidad INTEGER, precio Real, 
pedidos_a_Domicilio INTEGER, pedidos_cancelados INTEGER);

-- Inserción de múltiples valores.
INSERT INTO antojitos_mexicanos VALUES
    (1, "Pozole", 50, 80.0, 42, 2),
    (2, "Mole", 24, 55.0, 18, 5),
    (3, "Gorditas", 110, 20.0, 33, 0),
    (4, "Gorditas rellenas", 67, 26.0, 19, 2),
    (5, "Tacos de suadero", 62, 18.0, 43, 3),
    (6, "Tacos campechanos", 70, 18.0, 39, 2),
    (7, "Tacos de pastor", 315, 16.0, 195, 1),
    (8, "Tacos de tripa", 242, 20.0, 35, 2),
    (9, "Sope sencillo", 205, 18.0, 156, 4),
    (10, "Sope combinado", 167, 24.0, 118, 3),
    (11, "Chilaquiles", 285, 20.0, 225, 2),
    (12, "Chilaquiles combinados", 257, 32.0, 218, 1),
    (13, "Agua de horchata", 534, 15.0, 352, 0),
    (14, "Agua de limón", 285, 13.0, 225, 4),
    (15, "Agua de mango", 413, 15.0, 358, 2),
    (16, "Refrescos", 305, 19.0, 52, 0),
    (17, "Arroz con leche", 298, 15.0, 208, 1),
    (18, "Flan napolitano", 385, 16.0, 203, 0),
    (19, "Pan de maíz", 414, 12.0, 298, 1);

-- Elementos ordenados, del más económico al más caro.
SELECT * FROM antojitos_mexicanos ORDER BY precio;

-- Consulta del producto más vendido.
SELECT MAX(cantidad) FROM antojitos_mexicanos;

-- Consulta del producto menos vendido.
SELECT MIN(cantidad) FROM antojitos_mexicanos;

--Total de pedidos en la semana.
SELECT SUM(cantidad) FROM antojitos_mexicanos;

--Total de ganacias en la semana.
SELECT SUM(cantidad * precio) FROM antojitos_mexicanos;

