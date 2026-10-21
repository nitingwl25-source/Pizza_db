
-- =========================================================
-- PROJECT: PIZZA SALES ANALYSIS
-- DATABASE: pizza_d
-- TOOL: PostgreSQL
-- PURPOSE: Analyze revenue, orders, pizza sales and trends
-- =========================================================


-- =========================================================
-- 1. CREATE DATABASE
-- Run this statement separately if the database doesn't exist.
-- Then connect to pizza_d in pgAdmin.
-- =========================================================

CREATE DATABASE pizza_d;


-- =========================================================
-- 2. CREATE TABLE
-- Run this section after connecting to pizza_d.
-- If the table already exists and contains your data,
-- do not drop or recreate it.
-- =========================================================

CREATE TABLE IF NOT EXISTS pizza_sales (
    pizza_id          INT PRIMARY KEY,
    order_id          INT NOT NULL,
    pizza_name_id     VARCHAR(50),
    quantity          SMALLINT,
    order_date        DATE,
    order_time        TIME,
    unit_price        NUMERIC(10,2),
    total_price       NUMERIC(10,2),
    pizza_size        VARCHAR(10),
    pizza_category    VARCHAR(50),
    pizza_ingredients VARCHAR(250),
    pizza_name        VARCHAR(150)
);


-- =========================================================
-- 3. DATA VALIDATION
-- =========================================================

-- View all records
SELECT *
FROM pizza_sales;

-- Total number of rows
SELECT COUNT(*) AS total_records
FROM pizza_sales;

-- Check the connected database
SELECT CURRENT_DATABASE();


-- =========================================================
-- 4. KEY PERFORMANCE INDICATORS (KPIs)
-- =========================================================

-- 4.1 Total Revenue
SELECT
    SUM(total_price) AS total_revenue
FROM pizza_sales;


-- 4.2 Average Order Value
SELECT
    ROUND(
        SUM(total_price) / NULLIF(COUNT(DISTINCT order_id), 0),
        2
    ) AS average_order_value
FROM pizza_sales;


-- 4.3 Total Pizzas Sold
SELECT
    SUM(quantity) AS total_pizzas_sold
FROM pizza_sales;


-- 4.4 Total Orders
SELECT
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales;


-- 4.5 Average Pizzas Per Order
SELECT
    ROUND(
        SUM(quantity)::NUMERIC /
        NULLIF(COUNT(DISTINCT order_id), 0),
        2
    ) AS average_pizzas_per_order
FROM pizza_sales;


-- =========================================================
-- 5. DAILY SALES TREND
-- Orders by day of the week
-- =========================================================

SELECT
    TRIM(TO_CHAR(order_date, 'Day')) AS order_day,
    EXTRACT(ISODOW FROM order_date) AS day_number,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY
    TRIM(TO_CHAR(order_date, 'Day')),
    EXTRACT(ISODOW FROM order_date)
ORDER BY day_number;


-- =========================================================
-- 6. MONTHLY SALES TREND
-- =========================================================

SELECT
    DATE_TRUNC('month', order_date)::DATE AS order_month,
    SUM(total_price) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY order_month;


-- =========================================================
-- 7. SALES BY PIZZA CATEGORY
-- Revenue contribution percentage by category
-- =========================================================

SELECT
    pizza_category,
    SUM(total_price) AS total_revenue,
    ROUND(
        SUM(total_price) * 100.0 /
        NULLIF((SELECT SUM(total_price) FROM pizza_sales), 0),
        2
    ) AS revenue_percentage
FROM pizza_sales
GROUP BY pizza_category
ORDER BY total_revenue DESC;


-- =========================================================
-- 8. SALES BY PIZZA SIZE
-- Revenue contribution percentage by size
-- =========================================================

SELECT
    pizza_size,
    SUM(total_price) AS total_revenue,
    ROUND(
        SUM(total_price) * 100.0 /
        NULLIF((SELECT SUM(total_price) FROM pizza_sales), 0),
        2
    ) AS revenue_percentage
FROM pizza_sales
GROUP BY pizza_size
ORDER BY total_revenue DESC;


-- =========================================================
-- 9. TOP 5 PIZZAS BY REVENUE
-- =========================================================

SELECT
    pizza_name,
    SUM(total_price) AS revenue,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY revenue DESC
LIMIT 5;


-- =========================================================
-- 10. BOTTOM 5 PIZZAS BY REVENUE
-- =========================================================

SELECT
    pizza_name,
    SUM(total_price) AS revenue,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY revenue ASC
LIMIT 5;


-- =========================================================
-- 11. TOP 5 PIZZAS BY NUMBER OF ORDERS
-- =========================================================

SELECT
    pizza_name,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(total_price) AS revenue,
    SUM(quantity) AS total_quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_orders DESC
LIMIT 5;


-- =========================================================
-- 12. TOP 5 PIZZAS BY QUANTITY SOLD
-- =========================================================

SELECT
    pizza_name,
    SUM(quantity) AS total_quantity,
    SUM(total_price) AS revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_quantity DESC
LIMIT 5;


-- =========================================================
-- END OF PIZZA SALES ANALYSIS
-- =========================================================
