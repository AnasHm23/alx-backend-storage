DELIMITER //

CREATE PROCEDURE AddBonus (
    IN user_id INT,
    IN project_name VARCHAR(255),
    IN score INT
)
BEGIN
    DECLARE project_id INT;

    SELECT id INTO project_id
    from projects
    where name = project_name
    LIMIT 1;

    IF project_id IS NULL THEN
        INSERT INTO projects (name)
        VALUES (project_name);
    END IF;

    INSERT INTO corrections (user_id, project_id, score)
    VALUES (user_id, project_id, score)
END //

DELIMITER ;
