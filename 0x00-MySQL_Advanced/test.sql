-- create table users if does not exist
CREATE TABLE IF NOT EXISTS `userss` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `email` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255),
    UNIQUE (`email`)
)
