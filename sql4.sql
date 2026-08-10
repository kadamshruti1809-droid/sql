CREATE DATABASE pizza_sales_analysis;
USE pizza_sales_analysis;
SHOW DATABASES;
CREATE TABLE `order` (
    id INT,
    date DATE
);
ALTER TABLE `order`
ADD COLUMN time TIME AFTER date;
RENAME TABLE `order` TO orders;
ALTER TABLE orders
ADD PRIMARY KEY (id);