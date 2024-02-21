

-- Inserción de datos


INSERT INTO plants (plant_id, name, price, description, stock_quantity)
VALUES
(1, 'Suculenta', 1000, 'PlaceHolder', 50),
(2, 'Girasoles', 4000, 'Plantas amantes del sol', 30),
(3, 'Tulipanes', 3500, 'Plantas de hermosos colores', 19),
(4, 'Orquideas', 3250, 'PlaceHolder', 100),
(5, 'Alegrias', 3000, 'Faciles de cuidar y hermosas', 80),
(6, 'Petunias', 3500, 'Plantas con flores coloridas', 25),
(7, 'Potus', 2000, 'Planta simple y facil de cuidar', 15),
(8, 'PreubaDelete', 1000, 'PlaceHolder', 50),
(9, 'Rosa', 1200, 'Flores grandes y lindas', 20);


INSERT INTO categories (category_id, category_name)
VALUES
(1, 'Arbustos'),
(2, 'Florales'),
(3, 'Faciles de cuidar'),
(4, 'Trepadoras'),
(5, 'Sencillas');


INSERT INTO plant_category (plant_id, category_id)
VALUES
(1, 1),
(2, 4),
(3, 5),
(4, 5),
(5, 2),
(6, 2),
(7, 3),
(8, 3);


INSERT INTO customers (customer_id, first_name, last_name, email)
VALUES
(1, 'Johnny', 'Dam', 'johnny.dam@example.com'),
(2, 'John', 'Doe', 'john.doe@example.com'),
(3, 'Juan', 'Pape', 'juan.pape@example.com'),
(4, 'Dante', 'Enrietti', 'dante.enrietti@example.com'),
(5, 'Jane', 'Smith', 'jane.smith@example.com');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES
(1, 1, '2024-01-21'),
(2, 2, '2024-01-22');


INSERT INTO order_items (order_id, plant_id, quantity, subtotal)
VALUES
(1, 1, 3, 1800),
(1, 2, 2, 1600),
(2, 3, 1, 1200);