IF DB_ID('SnackifyDB') IS NULL
BEGIN
    CREATE DATABASE SnackifyDB;
END
GO

USE SnackifyDB;
GO

IF OBJECT_ID('dbo.snack_sales') IS NOT NULL
    DROP TABLE dbo.snack_sales;
GO

CREATE TABLE dbo.snack_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    city VARCHAR(100),
    product VARCHAR(150),
    category VARCHAR(50),
    quantity INT,
    unit_price DECIMAL(10,2),
    total_amount AS (quantity * unit_price) PERSISTED
);
GO

USE SnackifyDB;
GO

INSERT INTO dbo.snack_sales (order_id, order_date, customer_id, city, product, category, quantity, unit_price)
VALUES
(1, '2024-11-01', 101, 'Chennai', 'Classic Salted Chips', 'Chips', 2, 20.00),
(2, '2024-11-02', 102, 'Coimbatore', 'Masala Chips', 'Chips', 3, 25.00),
(3, '2024-11-03', 103, 'Madurai', 'Butter Biscuit', 'Biscuits', 1, 15.00),
(4, '2024-11-04', 101, 'Chennai', 'Cold Coffee', 'Drinks', 2, 40.00),
(5, '2024-11-05', 104, 'Salem', 'Veg Patty', 'Frozen', 1, 75.00);
GO

