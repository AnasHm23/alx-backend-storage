-- creates a trigger that resets the attribute valid_email 
-- only when the email has been changed.
DELIMITER //

CREATE TRIGGER reset_email
AFTER UPDATE ON `users`
FOR EACH ROW
BEGIN
    IF OLD.email <> NEW.email THEN
        UPDATE `users`
        SET valid_email = NULL
        WHERE id = NEW.id;
    END if;
END //

DELIMITER ;
