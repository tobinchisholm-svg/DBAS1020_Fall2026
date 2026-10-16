DROP DATABASE IF EXISTS pos_tobin;
CREATE DATABASE pos_tobin;
USE pos_tobin;

CREATE TABLE customers (
    customer_id   INT          NOT NULL AUTO_INCREMENT,
    first_name    VARCHAR(50)  NOT NULL,
    last_name     VARCHAR(50)  NOT NULL,
    phone_number  VARCHAR(25),
    PRIMARY KEY (customer_id)
);

CREATE TABLE orders (
    order_id     INT       NOT NULL AUTO_INCREMENT,
    customer_id  INT       NOT NULL,
    order_date   DATETIME  NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

CREATE TABLE products (
    product_id      INT           NOT NULL AUTO_INCREMENT,
    product_name    VARCHAR(100)  NOT NULL UNIQUE,
    category        VARCHAR(50)   NOT NULL,
    price           DECIMAL(8,2)  NOT NULL,
    stock_quantity  INT           NOT NULL DEFAULT 0,
    PRIMARY KEY (product_id)
);

CREATE TABLE orderitems (
    order_item_id  INT           NOT NULL AUTO_INCREMENT,
    order_id       INT           NOT NULL,
    product_id     INT           NOT NULL,
    quantity       INT           NOT NULL,
    unit_price     DECIMAL(8,2)  NOT NULL,
    PRIMARY KEY (order_item_id),
    FOREIGN KEY (order_id) REFERENCES orders (order_id),
    FOREIGN KEY (product_id) REFERENCES products (product_id)
);