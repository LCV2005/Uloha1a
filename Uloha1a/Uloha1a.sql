CREATE DATABASE superstore;
CREATE TABLE customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    region VARCHAR(50)
);

CREATE TABLE products (
    product_id VARCHAR(20) PRIMARY KEY,
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(100)
);

CREATE TABLE orders (
    order_id VARCHAR(20) PRIMARY KEY,
    customer_id VARCHAR(20) NOT NULL,
    product_id VARCHAR(20) NOT NULL,
    order_date DATE NOT NULL,
    ship_date DATE NOT NULL,
    sales NUMERIC(10,2) NOT NULL,
    quantity INT NOT NULL,
    discount NUMERIC(10,2) NOT NULL,
    profit NUMERIC(10,2) NOT NULL,
    
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),
    
    FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);