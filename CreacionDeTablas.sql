

-- Creacion de tablas


CREATE TABLE plants (
    plant_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    description TEXT,
    stock_quantity INT NOT NULL
);

CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE plant_category (
    plant_id INT,
    category_id INT,
    PRIMARY KEY (plant_id, category_id),
    FOREIGN KEY (plant_id) REFERENCES plants(plant_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_id INT,
    plant_id INT,
    quantity INT,
    subtotal DECIMAL(10, 2),
    PRIMARY KEY (order_id, plant_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (plant_id) REFERENCES plants(plant_id)
);

CREATE TABLE audit_plants (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    table_name VARCHAR(255) NOT NULL,
    operation VARCHAR(10) NOT NULL,
    record_id INT NOT NULL,
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);