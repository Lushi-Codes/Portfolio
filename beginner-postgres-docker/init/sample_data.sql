-- Create a simple table
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    registeredd_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10, 2),
    stock INT
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE order_items (
    id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(id),
    product_id INT REFERENCES products(id),
    quantity INT
);


-- INSERT INTO customers
INSERT INTO customers (id, name, email, registeredd_at) VALUES (1, 'Alice Smith', 'alice@example.com', '2025-07-08 02:37:36');
INSERT INTO customers (id, name, email, registeredd_at) VALUES (2, 'Bob Johnson', 'bob@example.com', '2024-10-18 08:33:45');
INSERT INTO customers (id, name, email, registeredd_at) VALUES (3, 'Charlie Reyes', 'charlie@example.com', '2024-05-20 12:12:42');
INSERT INTO customers (id, name, email, registeredd_at) VALUES (4, 'Diana Cruz', 'diana@example.com', '2024-07-08 06:38:22');
INSERT INTO customers (id, name, email, registeredd_at) VALUES (5, 'Ethan Lopez', 'ethan@example.com', '2023-12-26 12:52:36');
INSERT INTO customers (id, name, email, registeredd_at) VALUES (6, 'Fiona Davis', 'fiona@example.com', '2025-04-03 08:30:35');
INSERT INTO customers (id, name, email, registeredd_at) VALUES (7, 'George Tan', 'george@example.com', '2025-03-27 02:02:09');
INSERT INTO customers (id, name, email, registeredd_at) VALUES (8, 'Hannah Kim', 'hannah@example.com', '2024-10-30 11:40:39');
INSERT INTO customers (id, name, email, registeredd_at) VALUES (9, 'Ian Wright', 'ian@example.com', '2024-01-29 13:19:36');
INSERT INTO customers (id, name, email, registeredd_at) VALUES (10, 'Julia Torres', 'julia@example.com', '2023-12-25 05:18:14');

-- INSERT INTO products
INSERT INTO products (id, name, price, stock) VALUES (1, 'Mechanical Keyboard', 89.99, 10);
INSERT INTO products (id, name, price, stock) VALUES (2, 'Gaming Mouse', 49.99, 25);
INSERT INTO products (id, name, price, stock) VALUES (3, 'USB-C Cable', 9.99, 100);
INSERT INTO products (id, name, price, stock) VALUES (4, 'Laptop Stand', 29.99, 50);
INSERT INTO products (id, name, price, stock) VALUES (5, 'Wireless Headphones', 119.95, 15);
INSERT INTO products (id, name, price, stock) VALUES (6, 'HD Webcam', 75.0, 30);
INSERT INTO products (id, name, price, stock) VALUES (7, 'External SSD 1TB', 129.99, 20);
INSERT INTO products (id, name, price, stock) VALUES (8, 'Portable Charger', 39.95, 40);
INSERT INTO products (id, name, price, stock) VALUES (9, 'Smartwatch Band', 19.99, 75);
INSERT INTO products (id, name, price, stock) VALUES (10, 'Bluetooth Speaker', 59.99, 18);

-- INSERT INTO orders
INSERT INTO orders (id, customer_id, order_date) VALUES (1, 1, '2024-02-05 21:36:04');
INSERT INTO orders (id, customer_id, order_date) VALUES (2, 2, '2024-12-13 06:14:59');
INSERT INTO orders (id, customer_id, order_date) VALUES (3, 3, '2023-11-25 03:33:18');
INSERT INTO orders (id, customer_id, order_date) VALUES (4, 4, '2024-10-04 07:18:07');
INSERT INTO orders (id, customer_id, order_date) VALUES (5, 5, '2025-05-20 05:07:44');
INSERT INTO orders (id, customer_id, order_date) VALUES (6, 6, '2025-05-10 09:49:27');
INSERT INTO orders (id, customer_id, order_date) VALUES (7, 7, '2023-12-02 02:42:29');
INSERT INTO orders (id, customer_id, order_date) VALUES (8, 8, '2024-08-05 12:06:16');
INSERT INTO orders (id, customer_id, order_date) VALUES (9, 9, '2024-03-09 09:00:08');
INSERT INTO orders (id, customer_id, order_date) VALUES (10, 10, '2024-07-27 03:05:18');

-- INSERT INTO order_items
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (1, 1, 1, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (2, 1, 3, 2);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (3, 2, 2, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (4, 2, 3, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (5, 3, 4, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (6, 3, 1, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (7, 4, 5, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (8, 4, 6, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (9, 5, 6, 2);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (10, 5, 8, 2);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (11, 6, 2, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (12, 7, 7, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (13, 8, 8, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (14, 9, 9, 2);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (15, 10, 10, 1);