CREATE schema `gamebar`;

CREATE TABLE `employees` (`id` INT PRIMARY KEY AUTO_INCREMENT,
 `first_name` VARCHAR(50) NOT NULL,
 `last_name` VARCHAR(50) NOT NULL);

CREATE TABLE `categories` (`id` INT PRIMARY KEY AUTO_INCREMENT,
 `name` VARCHAR(50) NOT NULL);

CREATE TABLE `products` (`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL,
`category_id` INT NOT NULL);
/* creating tables */

INSERT INTO `employees` (`first_name`, `last_name`) VALUES ('Test1', 'Tets1');
INSERT INTO `employees` (`first_name`, `last_name`) VALUES ('Test2', 'Test2');
INSERT INTO `employees` (`first_name`, `last_name`) VALUES ('Test3', 'Tets3');
/* inserting data */

 ALTER TABLE `employees`
 ADD COLUMN `middle_name` VARCHAR(50) NOT NULL;
 /* altering tables */
 
 ALTER TABLE `employees`
MODIFY COLUMN `middle_name` 
VARCHAR(100);
/* modifying columns */
 