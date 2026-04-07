-- Find products with color black
SELECT * FROM products
WHERE attributes->>'color' = 'black';

-- Get all orders of a user
SELECT * FROM orders WHERE user_id = 1;

-- Get order details
SELECT o.order_id, p.name, oi.quantity
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;