CREATE DATABASE `Movies`;

USE `movies`;

CREATE TABLE `directors` (
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`director_name` VARCHAR(50) NOT NULL,
`notes` TEXT);

INSERT INTO `directors` (`director_name`) VALUES ('Director1');
INSERT INTO `directors` (`director_name`) VALUES ('Director2');
INSERT INTO `directors` (`director_name`) VALUES ('Director3');
INSERT INTO `directors` (`director_name`) VALUES ('Director4');
INSERT INTO `directors` (`director_name`) VALUES ('Director5');

CREATE TABLE `genres` (
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`genre_name` VARCHAR(50) NOT NULL,
`notes` VARCHAR(50));

INSERT INTO `genres` (`genre_name`) VALUES ('Genre1');
INSERT INTO `genres` (`genre_name`) VALUES ('Genre2');
INSERT INTO `genres` (`genre_name`) VALUES ('Genre3');
INSERT INTO `genres` (`genre_name`) VALUES ('Genre4');
INSERT INTO `genres` (`genre_name`) VALUES ('Genre5');

CREATE TABLE `category` (
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`category_name` VARCHAR(50) NOT NULL,
`notes` VARCHAR(50));

INSERT INTO `category` (`category_name`) VALUES ('category1');
INSERT INTO `category` (`category_name`) VALUES ('category2');
INSERT INTO `category` (`category_name`) VALUES ('category3');
INSERT INTO `category` (`category_name`) VALUES ('category4');
INSERT INTO `category` (`category_name`) VALUES ('category5');

CREATE TABLE `movies` (
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`title` VARCHAR(100) NOT NULL,
`director_id` INT NOT NULL,
`copyright_year` DATE,
`length` TIME,
`genre_id` INT NOT NULL,
`category_id` INT NOT NULL,
`rating` INT,
`notes` TEXT);

INSERT INTO `movies` (`title`, `director_id`, `genre_id`, `category_id`) 
VALUES ('FAST&FURIOUS 1', 1, 2, 3);
INSERT INTO `movies` (`title`, `director_id`, `genre_id`, `category_id`) 
VALUES ('FAST&FURIOUS 2', 1, 2, 3);
INSERT INTO `movies` (`title`, `director_id`, `genre_id`, `category_id`) 
VALUES ('FAST&FURIOUS 3', 1, 2, 3);
INSERT INTO `movies` (`title`, `director_id`, `genre_id`, `category_id`) 
VALUES ('FAST&FURIOUS 4', 1, 2, 3);
INSERT INTO `movies` (`title`, `director_id`, `genre_id`, `category_id`) 
VALUES ('FAST&FURIOUS 5', 1, 2, 3);