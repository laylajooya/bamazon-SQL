-- Drops the bamazon_db if it exists currently --
DROP DATABASE IF EXISTS bamazon_db;
-- Creates the "bamazon_db" database --
CREATE DATABASE bamazon_db;

-- Makes it so all of the following code will affect bamazon_db --
USE bamazon_db;

-- Creates the table "products" within bamazon_db --
CREATE TABLE products (
  -- Makes a numeric column called "item_id" which cannot contain null --
  item_id INTEGER(10) AUTO_INCREMENT NOT NULL,
  -- Makes a string column called "product_name" which cannot contain null --
  product_name VARCHAR(100) NOT NULL,
  -- Makes a string column called "department_name" which cannot contain null --
  department_name VARCHAR(100) NOT NULL,
  -- Makes an decimal column called "price" which cannot contain null --
  price DECIMAL(10,2) NOT NULL,

  stock_quantity INTEGER(100),

  PRIMARY KEY (item_id)

);

-- Creates new rows containing data in all named columns --
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES 
("Becoming by Michelle Obama", "books", 32.50, 100),
("Against Interpretation: And Other Essays by Susan Sontag", "books", 18.00, 50),
("Dreams from My Father by Barack Obama", "books", 17.00, 75),
("The Audacity of Hope by Barack Obama", "books", 27.00, 25),
("AM", "vinyl", 19.98, 55),
("Suck It and See", "vinyl", 13.05, 75),
("Favourite Worst Nightmare", "vinyl", 12.96, 80),
("Whatever People Say I Am, That's What I Am Not", "vinyl", 13.98, 60),
("Tranquility Base Hotel & Casino", "vinyl", 19.98, 35),
("Humbug", "vinyl", 19.98, 25);

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password'