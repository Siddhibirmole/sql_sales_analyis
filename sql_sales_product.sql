create database  sales
use sales
show tables
select * from sales_data

1.Find Top-Selling Products
SELECT 
    product_id,
    product_name,
    SUM(quantity) AS total_unit_sold
FROM sales_data
GROUP BY product_id, product_name
ORDER BY total_unit_sold DESC
LIMIT 5;

2.Find revenue by region
SELECT region, SUM(quantity * price) AS total_revenue
FROM sales_data
GROUP BY region
ORDER BY total_revenue DESC;

3.Top-Selling Products by Revenue
SELECT 
product_id,product_name, SUM(quantity * price) AS total_revenue
FROM sales_data
GROUP BY product_id,product_name
ORDER BY total_revenue DESC
LIMIT 5;
4.Total sales order count
SELECT COUNT(order_id) AS total_orders
FROM sales_data;

5.Total Revenue of the Company
SELECT SUM(quantity * price) AS total_revenue
FROM sales_data;

6.Unique Products Sold
SELECT COUNT(DISTINCT product_id) AS total_products
FROM sales_data;

7.Least Selling Products
SELECT product_name, SUM(quantity) AS total_sold
FROM sales_data
GROUP BY product_name
ORDER BY total_sold ASC
LIMIT 5;

8.Average Price per Product
SELECT product_name, AVG(price) AS avg_price
FROM sales_data
GROUP BY product_name;

9.Products Sold More Than 100 Units
SELECT product_name, SUM(quantity) AS total_sold
FROM sales_data
GROUP BY product_name
HAVING total_sold > 100;

10.Region with Highest Revenue
SELECT region, SUM(quantity * price) AS revenue
FROM sales_data
GROUP BY region
ORDER BY revenue DESC
LIMIT 1;

11.Number of Orders per Region
SELECT region, COUNT(order_id) AS total_orders
FROM sales_data
GROUP BY region;
