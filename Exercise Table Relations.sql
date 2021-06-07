CREATE DATABASE `table_relations`;

USE `table_relations`;

-- one to onw relationship 
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
CONSTRAINT fk_people_passports
FOREIGN KEY (`passport_id`)
REFERENCES `passports`(`passport_id`));

INSERT INTO `people` (`first_name`, `salary`, `passport_id`)
VALUES ('Roberto', 43300, 102),
('Tom', 56100, 103),
('Yana', 60200, 101);

-- one to many relationship
CREATE TABLE `manufacturers`
(`manufacturer_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(30),
`established_on` DATE);

INSERT INTO `manufacturers`
VALUES (1, 'BMW', '1916-03-01'),
(2, 'Tesla', '2003-01-01'),
(3, 'Lada', '1966-05-01');

CREATE TABLE `models`
(`model_id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(30),
`manufacturer_id` INT,
CONSTRAINT fk_manufacturers_models
FOREIGN KEY (`manufacturer_id`)
REFERENCES `manufacturers`(`manufacturer_id`))
AUTO_INCREMENT = 101;

INSERT INTO `models`
VALUES (101, 'X1', 1),
(102, 'i6', 1),
(103, 'Model S', 2),
(104, 'Model X', 2),
(105, 'Model 3', 2), 
(106, 'Nova', 3);

-- many to many relationship 
CREATE TABLE `students`
(`student_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(30));

INSERT INTO `students`
VALUES (1, 'Mila'),
(2, 'Toni'), 
(3, 'Ron');

CREATE TABLE `exams`
(`exam_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(30));

INSERT INTO `exams`
VALUES (101, 'Spring MVC'),
(102, 'Neo4j'), 
(103, 'Oracle 11g');

CREATE TABLE `students_exams`
(`student_id` INT,
`exam_id` INT,
CONSTRAINT pk_students_exams
PRIMARY KEY (`student_id`, `exam_id`),
CONSTRAINT fk_exams
FOREIGN KEY (`exam_id`)
REFERENCES `exams`(`exam_id`),
CONSTRAINT fk_students
FOREIGN KEY (`student_id`)
REFERENCES `students`(`student_id`));

INSERT INTO `students_exams`
VALUES (1, 101),
(1, 102),
(2, 101),
(3, 103),
(2, 102),
(2, 103);

SELECT * FROM `students_exams`;