-- Insert User
INSERT INTO users (name, email, password)
VALUES ('Haaniyaa', 'haaniyaa@mail.com', '1234');

-- Insert Product with JSONB
INSERT INTO products (name, price, attributes)
VALUES (
    'Sneakers',
    2999,
    '{"color":"black","size":"9","brand":"Adidas"}'
);

-- Inventory
INSERT INTO inventory (product_id, stock)
VALUES (1, 50);

-- Create Order
INSERT INTO orders (user_id, status)
VALUES (1, 'PENDING');

-- Order Item
INSERT INTO order_items (order_id, product_id, quantity, price)
VALUES (1, 1, 2, 2999);

-- Payment
INSERT INTO payments (order_id, amount, payment_method, status)
VALUES (1, 5998, 'CARD', 'SUCCESS');