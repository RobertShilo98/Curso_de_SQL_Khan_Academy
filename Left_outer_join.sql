
CREATE DATABASE carrito_de_compra;

CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT);
/*
    Autor: Roberto Rico Sandoval.
    Fille: Aplcación de LEFT OUTER JOIN.
    Date: 13/ 05/ 2023
*/

INSERT INTO customers (name, email) VALUES ("Doctor Who", "doctorwho@timelords.com");
INSERT INTO customers (name, email) VALUES ("Harry Potter", "harry@potter.com");
INSERT INTO customers (name, email) VALUES ("Captain Awesome", "captain@awesome.com");


CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    item TEXT,
    price REAL);


INSERT INTO orders (customer_id, item, price)
    VALUES (1, "Sonic Screwdriver", 1000.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (2, "High Quality Broomstick", 40.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (1, "TARDIS", 1000000.00);


/* Seleccionar la columna name y email de la tabla costumers. Seleccionar la columna item y price de la tabla orders. 
Ordenear las columnas de la taba orders a la derecha de la tabla customers, igualando el dato de la columna id da la 
tabla customers con la columna id de la tabla orders.*/
SELECT customers.name, customers.email, orders.item, orders.price FROM customers LEFT OUTER JOIN orders
ON customers.id = orders.customer_id;


/* Seleccionar la columna name y email de la tabla costumers. Seleccionar. Sumar el total de precios de la columna 
price de la tabla orders, renombrar esta operación como dinero_gastado. Simpre y cuando se iguale el valor de la 
columna id de la tabla customers con la columna customer_id de la tabla orders. Ordenar de mayor a menor la 
operación renombrada dinero_gastado.*/
SELECT customers.name, customers.email, SUM(orders.price) AS dinero_gastado FROM customers
LEFT OUTER JOIN orders
ON
customers.id == orders.customer_id
GROUP BY(customers.name)
ORDER BY(dinero_gastado) DESC;

