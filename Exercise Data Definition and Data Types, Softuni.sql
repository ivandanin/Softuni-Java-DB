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
`job_title` VARCHAR(30) NOT NULL,
`department_id` INT REFERENCES `departments` (`id`),
`hire_date` DATE NOT NULL,
`salary` DECIMAL NOT NULL, 
`address_id` INT REFERENCES `addresses` (`id`));

INSERT INTO `towns` (`name`) VALUES ('Sofia');
INSERT INTO `towns` (`name`) VALUES ('Plovdiv');
INSERT INTO `towns` (`name`) VALUES ('Varna');
INSERT INTO `towns` (`name`) VALUES ('Burgas');

INSERT INTO `departments` (`name`) VALUES ('Engeneering');
INSERT INTO `departments` (`name`) VALUES ('Sales');
INSERT INTO `departments` (`name`) VALUES ('Marketing');
INSERT INTO `departments` (`name`) VALUES ('Software Development');
INSERT INTO `departments` (`name`) VALUES ('Quality Assurance');

INSERT INTO `employees` (`first_name`, `middle_name`, `last_name`, `job_title`, `hire_date`, `salary`)
VALUES ('Ivan', 'Ivanov', 'Ivanov', 'NET Developer', '2013-02-01', 3500);
INSERT INTO `employees` (`first_name`, `middle_name`, `last_name`, `job_title`, `hire_date`, `salary`)
VALUES ('Petar', 'Petrov', 'Petrov', 'Senior Engineer', '2004-03-02', 4000);
INSERT INTO `employees` (`first_name`, `middle_name`, `last_name`, `job_title`, `hire_date`, `salary`)
VALUES ('Maria', 'Petrova', 'Ivanova', 'Intern', '2016-08-28', 525.25);
INSERT INTO `employees` (`first_name`, `middle_name`, `last_name`, `job_title`, `hire_date`, `salary`)
VALUES ('Georgi', 'Terziev', 'Ivanov', 'CEO', '2007-12-09', 3000);
INSERT INTO `employees` (`first_name`, `middle_name`, `last_name`, `job_title`, `hire_date`, `salary`)
VALUES ('Peter', 'Pan', 'Pan', 'Intern', '2016-08-28', 599.88);

