-- 1️⃣ Sales Trend Report
WITH daily_sales AS (
    SELECT 
        o.order_date::date AS day,
        SUM(p.amount) AS total_sales
    FROM orders o
    JOIN payments p ON o.order_id = p.order_id
    WHERE p.status = 'SUCCESS'
    GROUP BY day
)
SELECT * FROM daily_sales ORDER BY day;


-- 2️⃣ Top Performing Products
SELECT 
    p.name,
    SUM(oi.quantity) AS total_sold,
    RANK() OVER (ORDER BY SUM(oi.quantity) DESC) AS rank
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.name;


-- 3️⃣ Customer Spending
SELECT 
    u.name,
    SUM(pay.amount) AS total_spent,
    RANK() OVER (ORDER BY SUM(pay.amount) DESC) AS customer_rank
FROM users u
JOIN orders o ON u.user_id = o.user_id
JOIN payments pay ON o.order_id = pay.order_id
WHERE pay.status = 'SUCCESS'
GROUP BY u.name;