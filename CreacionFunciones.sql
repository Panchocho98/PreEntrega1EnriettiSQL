
-- Creacion Funciones

-- Suma de precios (de misma planta)

DELIMITER //

CREATE FUNCTION f_suma_precio(plant_id INT, quantity INT) RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE suma_precio DECIMAL(10, 2);
    
    SELECT price * quantity INTO suma_precio
    FROM plants
    WHERE plant_id = plant_id
    LIMIT 1;
    
    RETURN suma_precio;
END //


SELECT f_suma_precio(1, 10) AS 'Suma total'



-- Calculo de valor con descuento

DELIMITER //

CREATE FUNCTION f_calculo_descuento(precio_planta DECIMAL(10, 2), porcentaje_descuento DECIMAL(5, 2)) RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE precio_descontado DECIMAL(10, 2);
    
    SET precio_descontado = precio_planta - (precio_planta * porcentaje_descuento / 100);
    
    RETURN precio_descontado;
END //


SELECT f_calculo_descuento(3000, 15) AS precio_descontado;
