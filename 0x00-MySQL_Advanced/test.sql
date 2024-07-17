DELIMITER //

DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;
CREATE PROCEDURE ComputeAverageScoreForUser (
    IN user_id INT
)
BEGIN
    DECLARE average_score_for_user FLOAT;

    SELECT AVG(score) INTO average_score_for_user
    FROM corrections
    WHERE user_id = user_id;

    UPDATE users
    SET average_score = average_score_for_user
    WHERE id = user_id;
END //

DELIMITER ;
