-- Total sales
SELECT SUM(sales_amount) AS total_sales
FROM sales_data;

-- Total orders
SELECT COUNT(order_id) AS total_orders
FROM sales_data;

-- Sales by category
SELECT category, SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY category
ORDER BY total_sales DESC;

-- Sales by region
SELECT region, SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY region
ORDER BY total_sales DESC;

-- Monthly sales trend
SELECT 
    EXTRACT(MONTH FROM order_date) AS sales_month,
    SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY EXTRACT(MONTH FROM order_date)
ORDER BY sales_month;