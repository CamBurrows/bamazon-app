DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products(
item_id INTEGER(11) AUTO_INCREMENT NOT NULL,
product_name VARCHAR(30),
department_name VARCHAR(30),
price INTEGER,
stock_quantity INTEGER,
PRIMARY KEY(item_id)
);

SELECT * FROM products;

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("speakers", "electronics", 100, 40);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("nike shoes", "apparel", 45, 26);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("knives", "home goods", 150, 10);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("vase", "home goods", 20, 40);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("xbox one", "electronics", 170, 300);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("jordans", "apparel", 250, 5);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("microphone", "electronics", 300, 25);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("ipad pro", "electronics", 600, 100);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("power drill", "electronics", 200, 10);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("portable speaker", "electronics", 60, 30)
