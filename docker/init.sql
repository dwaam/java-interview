CREATE TABLE IF NOT EXISTS product (
     id BIGSERIAL PRIMARY KEY,
     name VARCHAR(255) NOT NULL,
     sku VARCHAR(100) NOT NULL UNIQUE,
     quantity INTEGER DEFAULT 0,
     price DECIMAL(10, 2) NOT NULL
);

DELETE FROM product;

INSERT INTO product (name, sku, quantity, price) VALUES ('Mechanical Keyboard', 'KB-9921', 50, 89.99);
INSERT INTO product (name, sku, quantity, price) VALUES ('Gaming Mouse', 'MO-4412', 120, 45.50);
INSERT INTO product (name, sku, quantity, price) VALUES ('UltraWide Monitor', 'MN-7721', 15, 399.00);
