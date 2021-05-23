CREATE DATABASE `minions`;
-- create database 

USE `minions`;

CREATE TABLE `minions` (
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL,
`age` INT);

CREATE TABLE `towns` (
`town_id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL);
-- create tables

ALTER TABLE `towns` 
CHANGE COLUMN `town_id` `id` INT NOT NULL AUTO_INCREMENT;

ALTER TABLE `minions`
ADD COLUMN `town_id` INT NOT NULL;

ALTER TABLE `minions`
ADD CONSTRAINT fk_minions_towns
FOREIGN KEY (`town_id`)
REFERENCES `towns` (`id`);
-- alter minions table

INSERT INTO `towns` (`name`) VALUES ('Sofia');
INSERT INTO `towns` (`name`) VALUES ('Plovdiv');
INSERT INTO `towns` (`name`) VALUES ('Varna');

INSERT INTO `minions` (`name`, `age`, `town_id`) VALUES ('Kevin', 22, 1);
INSERT INTO `minions` (`name`, `age`, `town_id`) VALUES ('Bob', 15, 3);
INSERT INTO `minions` (`name`, `age`, `town_id`) VALUES ('Steward', NULL, 2);
-- insert records in both tables

TRUNCATE TABLE `minions`;
-- trunctate table minions

DROP TABLE `minions`;
DROP TABLE `towns`;
-- drop all tables

CREATE TABLE `people` (
`id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE,
`name` VARCHAR(200) NOT NULL,
`picture` BLOB, 
`height` FLOAT(5, 2),
`weight` FLOAT(5, 2),
`gender` CHAR(1) NOT NULL,
`birthdate` DATE NOT NULL,
`biography` TEXT);

INSERT INTO `people` (`name`, `height`, `weight`, `gender`, `birthdate`) VALUES ('Ivan', 182, 70, 'M', '2001-09-23');
INSERT INTO `people` (`name`, `height`, `weight`, `gender`, `birthdate`) VALUES ('Dragan', 162, 90, 'M', '1991-09-11');
INSERT INTO `people` (`name`, `height`, `weight`, `gender`, `birthdate`) VALUES ('Magdalena', 169, 50, 'W', '2001-11-13');
INSERT INTO `people` (`name`, `height`, `weight`, `gender`, `birthdate`) VALUES ('Sasho', 182, 72, 'M', '1999-10-03');
INSERT INTO `people` (`name`, `height`, `weight`, `gender`, `birthdate`) VALUES ('Kety', 158, 60, 'W', '1998-09-25');
-- create table people
 
CREATE TABLE `users` (
`id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE, 
`username` VARCHAR(30) NOT NULL UNIQUE,
`password` VARCHAR(26) NOT NULL,
`profile_picture` BLOB, 
`last_login_time` DATETIME,
`is_deleted` BOOLEAN);
-- create table users

ALTER TABLE `users`
DROP PRIMARY KEY,
ADD CONSTRAINT pk_users
PRIMARY KEY (`id`, `username`);
-- change primary key 

ALTER TABLE `users`
CHANGE COLUMN `last_login_time` `last_login_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;
-- set default value of a field 

ALTER TABLE `users`
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`),
ADD CONSTRAINT unique_username
UNIQUE (`username`);
-- set unique field

 



 