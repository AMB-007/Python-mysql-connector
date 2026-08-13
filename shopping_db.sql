create database shopping_db;
use shopping_db;

create table Product_Table(product_id int auto_increment primary key,
product_name varchar(50) not null,
category varchar(50) not null,
price decimal(10,2) not null,
stock int not null,
rating decimal(2,1) check(rating between 0 and 5));

desc product_table;
show tables;

INSERT INTO Product_Table(product_name, category, price, stock, rating)
VALUES
('Laptop', 'Electronics', 65000, 15, 4.8),
('Smartphone', 'Electronics', 28000, 25, 4.5),
('Rice Bag', 'Grocery', 1200, 40, 4.2),
('T-Shirt', 'Clothing', 800, 50, 4.0),
('Headphones', 'Electronics', 2500, 18, 4.4),
('Cooking Oil', 'Grocery', 1800, 30, 4.1),
('Jeans', 'Clothing', 2200, 12, 4.3),
('Smart Watch', 'Electronics', 7000, 10, 4.7);

select * from product_table;

-- display product name and price
select product_name,price from product_table;

-- display category and stock
select category,stock from product_table;

-- Products Price > 5000
select * from product_table where price > 5000;
-- Products Price < 1000
select * from product_table where price < 1000;

-- Products Price Between 1000 and 5000
select * from product_table where price between 1000 and 5000;

-- Stock Greater Than 20
select * from product_table where stock >20;

-- Rating Greater Than 4
SELECT * FROM Product_table WHERE rating > 4;

-- Electronics AND Rating > 4
SELECT * FROM Product WHERE category = 'Electronics' AND rating > 4;

-- Grocery OR Clothing
SELECT * FROM Product_table WHERE category = 'Grocery' OR category = 'Clothing';

-- Product Name and Rating Where Stock < 15
SELECT product_name, rating FROM Product_table WHERE stock < 15;

-- Update Price of One Product
UPDATE Product_table SET price = 30000 WHERE product_id = 2;

-- Update Stock Using WHERE
UPDATE Product_table SET stock = 35 WHERE product_id = 5;

-- Update Category Using WHERE
UPDATE Product_table SET category = 'Accessories' WHERE product_id = 5;

-- Add Brand Column
ALTER TABLE Product_table ADD brand VARCHAR(50);

-- Rename product_name to item_name
ALTER TABLE Product RENAME COLUMN product_name TO item_name;

--  Modify Data Type / Size

ALTER TABLE Product
MODIFY brand VARCHAR(100);

-- Rename Table
RENAME TABLE Product TO Product_Details;

--  Delete One Product
DELETE FROM Product_Details WHERE product_id = 6;

-- Display Remaining Records
SELECT * FROM Product_Details;

-- Drop One Column
ALTER TABLE Product_Details DROP COLUMN brand;

--  Drop Table
DROP TABLE Product_Details;

-- . Drop Database
DROP DATABASE shopping_db;




