DELIMETER //

CREATE TRIGGER reset_email
AFTER UPDATE ON `email`
BEGIN
    UPDATE 'email'
    SET `valid_email` = NULL
    WHERE id = NEW.email_id
END //

DELIMETER ;
