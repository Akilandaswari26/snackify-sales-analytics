USE SnackifyDB;
GO

-- 1️⃣ Total Revenue
SELECT SUM(total_amount) AS total_revenue
FROM dbo.snack_sales;

-- 2️⃣ Top Selling Products
SELECT TOP 5 product, SUM(quantity) AS total_sold
FROM dbo.snack_sales
GROUP BY product
ORDER BY total_sold DESC;

-- 3️⃣ Revenue by City
SELECT city, SUM(total_amount) AS revenue
FROM dbo.snack_sales
GROUP BY city
ORDER BY revenue DESC;
