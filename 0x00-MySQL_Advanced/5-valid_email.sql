-- creates a trigger that resets the attribute valid_email 
-- only when the email has been changed.
DELIMITER //

CREATE TRIGGER reset_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email <> NEW.email THEN
        SET valid_email = 0;
    END if;
END //

DELIMITER ;
