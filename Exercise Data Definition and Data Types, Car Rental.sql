CREATE DATABASE `car_rental`;

USE `car_rental`;

CREATE TABLE `categories` (
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
`category` VARCHAR(50),
`daily_rate` INT, 
`weekly_rate` INT,
`monthly_rate` INT,
`weekend_rate` INT);

INSERT INTO `categories` (`category`) VALUES ('sedan');
INSERT INTO `categories` (`category`) VALUES ('suv');
INSERT INTO `categories` (`category`) VALUES ('cabrio');

CREATE TABLE `cars` (
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`plate_number` VARCHAR(12) NOT NULL,
`make` VARCHAR(15) NOT NULL,
`model` VARCHAR(15) NOT NULL,
`car_year` DATE NOT NULL,
`category_id` INT,
`doors` INT,
`picture` BLOB,
`car_condition` VARCHAR(100),
`available` BOOLEAN NOT NULL);

INSERT INTO `cars` (`plate_number`, `make`, `model`, `car_year`, `available`)
VALUES ('CO222222', 'porsche', 'carerra', '2020-10-18', true);
INSERT INTO `cars` (`plate_number`, `make`, `model`, `car_year`, `available`)
VALUES ('CO8050AT', 'toyota', 'camry', '2020-03-11', true);
INSERT INTO `cars` (`plate_number`, `make`, `model`, `car_year`, `available`)
VALUES ('CB1111CB', 'alfa romeo', 'giulia', '2020-09-23', true); 

CREATE TABLE `employees` (
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`first_name` VARCHAR(30) NOT NULL,
`last_name` VARCHAR(30) NOT NULL,
`title` VARCHAR(30),
`notes` TEXT);

INSERT INTO `employees` (`first_name`, `last_name`) VALUES ('george', 'dimitrov');
INSERT INTO `employees` (`first_name`, `last_name`) VALUES ('asen', 'asenov');
INSERT INTO `employees` (`first_name`, `last_name`) VALUES ('ivan', 'ivanov');

CREATE TABLE `customers` (
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`driver_licence` INT NOT NULL,
`full_name` VARCHAR(50) NOT NULL,
`address` VARCHAR(200) NOT NULL,
`city` VARCHAR(200) NOT NULL,
`zip_code` INT, 
`notes` TEXT);


INSERT INTO `customers` (`driver_licence`, `full_name`, `address`, `city`)
VALUES (111111 , 'peter dimitrov', 'krustova vada, ul 5', 'sofia');
INSERT INTO `customers` (`driver_licence`, `full_name`, `address`, `city`)
VALUES (111111 , 'dimitar georgiev', 'kapana, muha 155', 'plovdiv');
INSERT INTO `customers` (`driver_licence`, `full_name`, `address`, `city`)
VALUES (111111 , 'levis straus', 'somewhere, str street', 'london');

CREATE TABLE `rental_orders` (
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`employee_id` INT NOT NULL REFERENCES `employees` (`id`),
`customer_id` INT NOT NULL REFERENCES `customers` (`id`),
`car_id` INT NOT NULL REFERENCES `cars` (`id`),
`car_condition` VARCHAR(100),
`tank_level` FLOAT(3,2),
`kilometrage_start` INT NOT NULL,
`kilometrage_end` INT NOT NULL,
`total_kilometrage` INT,
`start_date` DATETIME,
`end_date` DATETIME,
`total_days` INT,
`rate_applied` INT,
`tax_rate` DECIMAL,
`order_status` VARCHAR(50),
`notes` TEXT); 

INSERT INTO `rental_orders` (`employee_id`, `customer_id`, `car_id`, `kilometrage_start`, `kilometrage_end`)
VALUES (1, 3, 2, 3333, 3399);
INSERT INTO `rental_orders` (`employee_id`, `customer_id`, `car_id`, `kilometrage_start`, `kilometrage_end`)
VALUES (13, 13, 23, 3333, 3399);
INSERT INTO `rental_orders` (`employee_id`, `customer_id`, `car_id`, `kilometrage_start`, `kilometrage_end`)
VALUES (15, 83, 72, 333443, 339469);