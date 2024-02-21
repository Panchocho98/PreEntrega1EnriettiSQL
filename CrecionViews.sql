
-- Creacion de Vistas

-- Sort de precios Altos-Bajos

CREATE VIEW v_sort_precio_bajo AS
SELECT *
FROM plants
ORDER BY price ASC
LIMIT 5;

CREATE VIEW v_sort_precio_alto AS
SELECT *
FROM plants
ORDER BY price DESC
LIMIT 5;

-- Info. cada orden

CREATE VIEW v_order_plant_detalles AS
SELECT oi.order_id, p.name AS plant_name, oi.quantity, oi.subtotal
FROM order_items oi
JOIN plants p ON oi.plant_id = p.plant_id;

-- Plantas en stock

CREATE VIEW v_available_plants AS
SELECT *
FROM plants
WHERE stock_quantity > 0;

-- Detalles de orden

CREATE VIEW v_order_details AS
SELECT o.order_id, o.order_date, c.first_name, c.last_name, c.email
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;