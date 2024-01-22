




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
    order_id INT PRIMARY KEY,
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





-- Comandos de INSERT para cada tabla





INSERT INTO `coliflor_plantas`.`plants`
(`plant_id`,
`name`,
`price`,
`description`,
`stock_quantity`)
VALUES
(<{plant_id: }>,
<{name: }>,
<{price: }>,
<{description: }>,
<{stock_quantity: }>);


INSERT INTO `coliflor_plantas`.`categories`
(`category_id`,
`category_name`)
VALUES
(<{category_id: }>,
<{category_name: }>);


INSERT INTO `coliflor_plantas`.`plant_category`
(`plant_id`,
`category_id`)
VALUES
(<{plant_id: }>,
<{category_id: }>);


INSERT INTO `coliflor_plantas`.`customers`
(`customer_id`,
`first_name`,
`last_name`,
`email`)
VALUES
(<{customer_id: }>,
<{first_name: }>,
<{last_name: }>,
<{email: }>);


INSERT INTO `coliflor_plantas`.`orders`
(`order_id`,
`customer_id`,
`order_date`)
VALUES
(<{order_id: }>,
<{customer_id: }>,
<{order_date: }>);


INSERT INTO `coliflor_plantas`.`order_items`
(`order_id`,
`plant_id`,
`quantity`,
`subtotal`)
VALUES
(<{order_id: }>,
<{plant_id: }>,
<{quantity: }>,
<{subtotal: }>);