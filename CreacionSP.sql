
-- Creacion SP

-- Ordenes por cliente

DELIMITER //

CREATE PROCEDURE sp_ordenes_cliente(IN in_customer_id INT)
BEGIN
    SELECT *
    FROM orders
    WHERE customer_id = in_customer_id;
END //


CALL sp_ordenes_cliente(1)




-- Crear orden

DELIMITER //

CREATE PROCEDURE crear_orden(IN customer_id INT, IN input_plant_id INT, IN quantity INT)
BEGIN
    DECLARE nueva_orden_id INT;
    DECLARE plant_price DECIMAL(10, 2);
    
    INSERT INTO orders (customer_id, order_date)
    VALUES (customer_id, CURDATE());
    
    SET nueva_orden_id = LAST_INSERT_ID();
    
    SELECT price INTO plant_price
    FROM plants 
    WHERE plant_id = input_plant_id;
    
    INSERT INTO order_items (order_id, plant_id, quantity, subtotal)
    VALUES (nueva_orden_id, input_plant_id, quantity, plant_price * quantity);
    
    UPDATE plants
    SET stock_quantity = stock_quantity - quantity
    WHERE plant_id = input_plant_id;
END //



CALL crear_orden (1, 5, 2)