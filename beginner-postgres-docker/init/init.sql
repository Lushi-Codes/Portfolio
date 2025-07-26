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

-- Insert some starter data
INSERT INTO customers (name, email) VALUES
('Alice Smith', 'alice@example.com'),
('Bob Johnson', 'bob@example.com'),
('Charlie Reyes', 'charlie@example.com'),
('Diana Cruz', 'diana@example.com'),
('Ethan Lopez', 'ethan@example.com'),
('Fiona Davis', 'fiona@example.com'),
('George Tan', 'george@example.com'),
('Hannah Kim', 'hannah@example.com'),
('Ian Wright', 'ian@example.com'),
('Julia Torres', 'julia@example.com');

INSERT INTO products (name, price, stock) VALUES
('Mechanical Keyboard', 89.99, 10),
('Gaming Mouse', 49.99, 25),
('USB-C Cable', 9.99, 100),
('Laptop Stand', 29.99, 50),
('Wireless Headphones', 119.95, 15),
('HD Webcam', 75.00, 30),
('External SSD 1TB', 129.99, 20),
('Portable Charger', 39.95, 40),
('Smartwatch Band', 19.99, 75),
('Bluetooth Speaker', 59.99, 18);

INSERT INTO orders (customer_id) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 2, 1),
(2, 3, 1),
(3, 4, 1),
(4, 5, 1),
(5, 6, 2),
(6, 2, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 2),
(10, 10, 1),
(3, 1, 1),
(4, 6, 1),
(5, 8, 2);
