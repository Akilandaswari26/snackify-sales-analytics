USE SnackifyDB;
GO

-- 4️⃣ Monthly Revenue Trend
SELECT 
    FORMAT(order_date, 'yyyy-MM') AS month,
    SUM(total_amount) AS revenue
FROM dbo.snack_sales
GROUP BY FORMAT(order_date, 'yyyy-MM')
ORDER BY month;
