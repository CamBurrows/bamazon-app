DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products(
item_id INTEGER,
product_name VARCHAR(30),
department_name VARCHAR(30),
price INTEGER,
stock_quantity INTEGER,
PRIMARY KEY(item_id)
)

SELECT * FROM products;

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("speakers", "electronics", 100, 40);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("nike shoes", "apparel", 45, 26);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("knives", "home goods", 150, 10);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("vase", "home goods", 100, 40);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("xbox one", "electronics", 100, 40);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("jordans", "apparel", 100, 40);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("microphone", "electronics", 100, 40);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("ipad pro", "electronics", 100, 40);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("power drill", "electronics", 100, 40);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("portable speaker", "electronics", 100, 40);
