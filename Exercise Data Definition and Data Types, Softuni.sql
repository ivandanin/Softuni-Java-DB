CREATE DATABASE `soft_uni`;

USE `soft_uni`;

CREATE TABLE `towns` (
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(30) NOT NULL);

CREATE TABLE `addresses` (
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`address_text` VARCHAR(200),
`town_id` INT);

CREATE TABLE `departments` (
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(30) NOT NULL);

CREATE TABLE `employees` (
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`first_name` VARCHAR(30) NOT NULL,
`middle_name` VARCHAR(30) NOT NULL,
`last_name` VARCHAR(30) NOT NULL,
`job_title` VARCHAR(30),
`salary` DECIMAL,
`department_id` INT,
`hire_date` DATE NOT NULL,
`address_id` INT,
CONSTRAINT fk_employees_departments
FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
CONSTRAINT fk_employees_addresses
FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`));

INSERT INTO `towns` (`name`) VALUES ('Sofia');
INSERT INTO `towns` (`name`) VALUES ('Plovdiv');
INSERT INTO `towns` (`name`) VALUES ('Varna');
INSERT INTO `towns` (`name`) VALUES ('Burgas');

INSERT INTO `departments` (`name`) VALUES ('Engeneering');
INSERT INTO `departments` (`name`) VALUES ('Sales');
INSERT INTO `departments` (`name`) VALUES ('Marketing');
INSERT INTO `departments` (`name`) VALUES ('Software Development');
INSERT INTO `departments` (`name`) VALUES ('Quality Assurance');

INSERT INTO `employees` 
VALUES
(1, 'Ivan', 'Ivanov', 'Ivanov', 'NET Developer', 3500.00, 4, '2013-02-01', NULL),
(2, 'Petar', 'Petrov', 'Petrov', 'Senior Engineer', 4000.00, 1, '2004-03-02', NULL),
(3, 'Maria', 'Petrova', 'Ivanova', 'Intern', 525.25, 5, '2016-08-28', NULL),
(4, 'Georgi', 'Terziev', 'Ivanov', 'CEO', 3000.00, 2, '2007-12-09', NULL),
(5, 'Peter', 'Pan', 'Pan', 'Intern', 599.88, 3, '2016-08-28', NULL);

SELECT * FROM `towns`
ORDER BY `name`;

SELECT * FROM `departments`
ORDER BY `name`;

SELECT * FROM `employees`
ORDER BY `salary` DESC;

SELECT `name` FROM `towns`
ORDER BY `name`;

SELECT `name` FROM `departments`
ORDER BY `name`;

SELECT `first_name`, `last_name`, `job_title`, `salary` FROM `employees`
ORDER BY `salary` DESC;

UPDATE `employees`
SET `salary` = `salary` * 1.1;
-- WHERE `id` = 1; 
SELECT `salary` FROM `employees`;



