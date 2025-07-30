-- CREATE TABLE IF NOT EXISTS transactions (
--     id SERIAL PRIMARY KEY,
--     customer_name TEXT,
--     region TEXT,
--     product TEXT,
--     price TEXT, -- messy type on purpose
--     quantity TEXT, -- messy type on purpose
--     transaction_date TEXT -- messy format e.g., "07-2024-20"
-- );

-- -- Partitioned by month (we’ll do it manually)
-- CREATE TABLE transactions_2024_07 (LIKE transactions INCLUDING ALL);
-- CREATE TABLE transactions_2024_06 (LIKE transactions INCLUDING ALL);


-- Create staging/raw table for customers
CREATE TABLE IF NOT EXISTS customer_raw (
    id TEXT,
    full_name TEXT,
    email TEXT,
    joined_date TEXT  -- e.g., inconsistent date formats like "2024-07-01", "07/01/2024"
);

-- Create staging/raw table for products
CREATE TABLE IF NOT EXISTS products_raw (
    product_id TEXT,
    name TEXT,
    category TEXT,
    price TEXT  -- messy: might include "$", "USD", or be non-numeric
);

-- Create staging/raw table for orders
CREATE TABLE IF NOT EXISTS orders_raw (
    order_id TEXT,
    customer_id TEXT,
    order_date TEXT  -- messy: inconsistent date format
);

-- Create staging/raw table for order items
CREATE TABLE IF NOT EXISTS order_items_raw (
    order_item_id TEXT,
    order_id TEXT,
    product_id TEXT,
    quantity TEXT  -- might contain "3 units", "two", etc.
);
