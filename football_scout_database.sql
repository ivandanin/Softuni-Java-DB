CREATE DATABASE `fsd`;

USE `fsd`;

CREATE TABLE `countries`
(`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(45) NOT NULL);

CREATE TABLE `towns`
(`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(45) NOT NULL,
`country_id` INT NOT NULL,
CONSTRAINT fk_towns_countries
FOREIGN KEY (`country_id`)
REFERENCES `countries`(`id`)); 

CREATE TABLE `stadiums`
(`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(45) NOT NULL,
`capacity` INT NOT NULL,
`town_id` INT NOT NULL,
CONSTRAINT fk_stadiums_towns
FOREIGN KEY (`town_id`)
REFERENCES `towns`(`id`));

CREATE TABLE `teams`
(`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(45) NOT NULL,
`established` DATE NOT NULL,
`fan_base` BIGINT NOT NULL DEFAULT (0),
`stadium_id` INT NOT NULL,
CONSTRAINT fk_teams_stadiums
FOREIGN KEY (`stadium_id`)
REFERENCES `stadiums`(`id`));

CREATE TABLE `skills_data`
(`id` INT PRIMARY KEY AUTO_INCREMENT,
`dribbling` INT DEFAULT (0),
`pace` INT DEFAULT (0),
`passing` INT DEFAULT (0),
`shooting` INT DEFAULT (0),
`speed` INT DEFAULT (0),
`strength` INT DEFAULT (0));

CREATE TABLE `coaches`
(`id` INT PRIMARY KEY AUTO_INCREMENT, 
`first_name` VARCHAR(10) NOT NULL, 
`last_name` VARCHAR(20) NOT NULL,
`salary` DECIMAL(10, 2) NOT NULL DEFAULT (0),
`coach_level` INT NOT NULL DEFAULT (0));

CREATE TABLE `players`
(`id` INT PRIMARY KEY AUTO_INCREMENT,
`first_name` VARCHAR(10) NOT NULL,
`last_name` VARCHAR(20) NOT NULL,
`age` INT NOT NULL DEFAULT (0),
`position` CHAR(1) NOT NULL,
`salary` DECIMAL(10, 2) NOT NULL DEFAULT (0),
`hire_date` DATETIME,
`skills_data_id` INT NOT NULL,
`team_id` INT,
CONSTRAINT fk_players_skills_data
FOREIGN KEY (`skills_data_id`)
REFERENCES `skills_data`(`id`),
CONSTRAINT fk_players_teams
FOREIGN KEY (`team_id`)
REFERENCES `teams`(`id`));

CREATE TABLE `players_coaches` 
(`player_id` INT,
`coach_id` INT,
CONSTRAINT pk_players_coaches
PRIMARY KEY (`player_id`, `coach_id`),
CONSTRAINT fk_players_coaches_players
FOREIGN KEY (`player_id`)
REFERENCES `players`(`id`),
CONSTRAINT fk_players_coaches_coaches
FOREIGN KEY (`coach_id`)
REFERENCES `coaches`(`id`));


-- insert
INSERT INTO `coaches`
(`first_name`, `last_name`, `salary`, `coach_level`)
(SELECT  p.`first_name`,
p.`last_name`,
p.`salary` * 2,
CHAR_LENGTH(p.`first_name`)
FROM `players` AS p
WHERE p.`age` >= 45);

-- update
UPDATE `coaches` AS c
JOIN `players_coaches` AS pc
ON pc.`coach_id` = c.`id`
SET c.`coach_level` = c.`coach_level` + 1
WHERE c.`first_name` LIKE 'A%';

-- delete
DELETE FROM `players` 
WHERE `age` >= 45;

-- players
SELECT `first_name`, `age`, `salary`
FROM `players`
ORDER BY `salary` DESC;

-- young offence players without contract
SELECT p.`id`, 
CONCAT(p.`first_name`, ' ', p.`last_name`) AS `full_name`, 
`age`, `position`, `hire_date` 
FROM `players` AS p
JOIN `skills_data` AS sd
ON sd.`id` = p.`skills_data_id`
WHERE p.`age` < 23
AND p.`position` = 'A'
AND p.`hire_date` IS NULL
AND sd.`strength` > 50
ORDER BY `salary`, `age`;

-- detail info for all teams
SELECT t.`name` AS `team_name`, t.`established`,
t.`fan_base`, COUNT(p.`team_id`) AS `players_count`
FROM `teams` AS t
LEFT JOIN `players` AS p
ON p.`team_id` = t.`id`
GROUP BY t.`id`
ORDER BY `players_count` DESC, `fan_base` DESC;

-- the fastest player by town
SELECT MAX(sd.`speed`) AS `max_speed`, (t.`name`) AS `town_name` 
FROM `players` AS p 
RIGHT JOIN `skills_data` AS sd
ON p.`skills_data_id` = sd.`id`
RIGHT JOIN `teams` AS team
ON team.`id` = p.`team_id`
RIGHT JOIN `stadiums` AS s
ON s.`id` = team.`stadium_id`
JOIN `towns` AS t
ON t.`id` = s.`town_id`
WHERE team.`name` != 'Devify'
GROUP BY t.`id`
ORDER BY `max_speed` DESC, `town_name`;

-- top salaries and players by country
SELECT c.`name`, COUNT(p.`id`) AS `total_count_of_players`,
SUM(p.`salary`) AS `total_sum_of_salaries`
FROM `countries` AS c
LEFT JOIN `towns` AS t
ON t.`country_id` = c.`id`
LEFT JOIN `stadiums` AS st
ON st.`town_id` = t.`id`
LEFT JOIN `teams` AS team
ON team.`stadium_id` = st.`id`
LEFT JOIN `players` AS p
ON p.`team_id` = team.`id`
GROUP BY c.`name`
ORDER BY `total_count_of_players` DESC, c.`name`;

-- find all players that play on stadium
DELIMITER //
CREATE FUNCTION `udf_stadium_players_count`(`stadium_name` VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE `count` INT;
	SET `count` := (
	SELECT COUNT(*)
	FROM `players` AS p
	JOIN `teams` AS t
	ON t.`id` = p.`team_id`
	JOIN `stadiums` AS s
	ON s.`id` = t.`stadium_id`
	WHERE s.`name` = `stadium_name`);
	RETURN `count`;
END// 
DELIMITER ;

-- find good playmaker by teams
DELIMITER //
CREATE PROCEDURE `udp_find_playmaker`(`min_dribble_points` INT, `team_name` VARCHAR(45))
BEGIN
	SELECT CONCAT(p.`first_name`, ' ', p.`last_name`), p.`age`,
p.`salary`, sd.`dribbling`, sd.`speed`, t.`name` AS `team_name`
FROM `players` AS p
JOIN `skills_data` AS sd
ON sd.`id` = p.`skills_data_id`
JOIN `teams` AS t
ON t.`id` = p.`team_id`
WHERE sd.`dribbling` > `min_dribble_points`
AND t.`name` = `team_name`
ORDER BY sd.`speed` DESC
LIMIT 1;
END//
DELIMITER ;

CALL `udp_find_playmaker`(20, 'Skyble');

SELECT CONCAT(p.`first_name`, ' ', p.`last_name`), p.`age`,
p.`salary`, sd.`dribbling`, sd.`speed`, t.`name` AS `team_name`
FROM `players` AS p
JOIN `skills_data` AS sd
ON sd.`id` = p.`skills_data_id`
JOIN `teams` AS t
ON t.`id` = p.`team_id`
WHERE sd.`dribbling` > 20
AND t.`name` = 'Skyble'
ORDER BY sd.`speed` DESC
LIMIT 1;