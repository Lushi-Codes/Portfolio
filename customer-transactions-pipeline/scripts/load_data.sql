-- Assumes CSVs are inside container at /scripts/
COPY customer_raw FROM '/sample_data/customers_dirty.csv' DELIMITER ',' CSV HEADER;
COPY products_raw FROM '/sample_data/products_dirty.csv' DELIMITER ',' CSV HEADER;
COPY orders_raw FROM '/sample_data/orders_dirty.csv' DELIMITER ',' CSV HEADER;
COPY order_items_raw FROM '/sample_data/order_items_dirty.csv' DELIMITER ',' CSV HEADER;
