CREATE DATABASE `table_relations`;

USE `table_relations`;

CREATE TABLE `passports`
(`passport_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`passport_number` VARCHAR(8))
AUTO_INCREMENT = 101;

INSERT INTO `passports`
VALUES (101, 'N34FG21B'),
(102, 'K65LO4R7'),
(103, 'ZE657QP2');

CREATE TABLE `people` 
(`person_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`first_name` VARCHAR(50),
`salary` DECIMAL(10, 2),
`passport_id` INT NOT NULL UNIQUE,
CONSTRAINT fk_people_passportS
FOREIGN KEY (`passport_id`)
REFERENCES `passports`(`passport_id`));

INSERT INTO `people` (`first_name`, `salary`, `passport_id`)
VALUES ('Roberto', 43300, 102),
('Tom', 56100, 103),
('Yana', 60200, 101);


SELECT * FROM `pASSPORTS`;