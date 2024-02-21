-- Triggers para INSERT, UPDATE Y DELETE de auditoria de la tabla plants

DELIMITER //

CREATE TRIGGER t_audit_plants_insert
AFTER INSERT ON plants
FOR EACH ROW
BEGIN
    INSERT INTO audit_plants (table_name, operation, record_id)
    VALUES ('plants', 'INSERT', NEW.plant_id);
END //


DELIMITER //
CREATE TRIGGER t_audit_plants_update
AFTER UPDATE ON plants
FOR EACH ROW
BEGIN
    INSERT INTO audit_plants (table_name, operation, record_id)
    VALUES ('plants', 'UPDATE', NEW.plant_id);
END //


DELIMITER //
CREATE TRIGGER t_audit_plants_delete
AFTER DELETE ON plants
FOR EACH ROW
BEGIN
    INSERT INTO audit_plants (table_name, operation, record_id)
    VALUES ('plants', 'DELETE', OLD.plant_id);
END //
