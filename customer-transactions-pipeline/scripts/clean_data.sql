DROP TABLE IF EXISTS customers_clean;

CREATE TABLE customers_clean AS
SELECT DISTINCT
    CAST(id AS INTEGER) AS customer_id,
    TRIM(full_name) AS full_name,
    LOWER(email) AS email,
    TO_TIMESTAMP(joined_date, 'YYYY-MM-DD HH24:MI:SS') AS joined_date
FROM customer_raw
WHERE 
    id ~ '^\d+$' AND
    full_name IS NOT NULL AND full_name <> '' AND
    email IS NOT NULL AND email <> '' AND
    joined_date ~ '^\d{4}-\d{2}-\d{2}( \d{2}:\d{2}:\d{2})?$';


DROP TABLE IF EXISTS products_clean;

CREATE TABLE products_clean AS
SELECT DISTINCT
    CAST(product_id AS INTEGER) AS product_id,
    TRIM(name) AS product_name,
    TRIM(category) AS category,
    CAST(NULLIF(REGEXP_REPLACE(price, '[^0-9.-]', '', 'g'), '') AS NUMERIC(10,2)) AS price
FROM products_raw
WHERE 
    product_id ~ '^\d+$' AND
    price ~ '^-?\d+(\.\d+)?$';


DROP TABLE IF EXISTS orders_clean;

CREATE TABLE orders_clean AS
SELECT DISTINCT
    CAST(order_id AS INTEGER) AS order_id,
    CAST(customer_id AS INTEGER) AS customer_id,
    TO_DATE(order_date, 'YYYY-MM-DD') AS order_date
FROM orders_raw
WHERE 
    order_id ~ '^\d+$' AND
    customer_id ~ '^\d+$' AND
    order_date ~ '^\d{4}-\d{2}-\d{2}$';


DROP TABLE IF EXISTS order_items_clean;

CREATE TABLE order_items_clean AS
SELECT DISTINCT
    CAST(order_item_id AS INTEGER) AS order_item_id,
    CAST(order_id AS INTEGER) AS order_id,
    CAST(product_id AS INTEGER) AS product_id,
    CAST(NULLIF(REGEXP_REPLACE(quantity, '[^0-9]', '', 'g'), '') AS INT) AS quantity
FROM order_items_raw
WHERE 
    order_item_id ~ '^\d+$' AND
    order_id ~ '^\d+$' AND
    product_id ~ '^\d+$' AND
    quantity ~ '^\s*\d+\s*$';


