/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

USE soft_uni;

-- Dumping structure for table bank.accounts
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL,
  `account_holder_id` int(11) NOT NULL,
  `balance` decimal(19,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `fk_accounts_account_holders` (`account_holder_id`),
  CONSTRAINT `fk_accounts_account_holders` FOREIGN KEY (`account_holder_id`) REFERENCES `account_holders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bank.accounts: ~18 rows (approximately)
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` (`id`, `account_holder_id`, `balance`) VALUES
	(1, 1, 123.1200),
	(2, 3, 4354.2300),
	(3, 12, 6546543.2300),
	(4, 9, 15345.6400),
	(5, 11, 36521.2000),
	(6, 8, 5436.3400),
	(7, 10, 565649.2000),
	(8, 11, 999453.5000),
	(9, 1, 5349758.2300),
	(10, 2, 543.3000),
	(11, 3, 10.2000),
	(12, 7, 245656.2300),
	(13, 5, 5435.3200),
	(14, 4, 1.2300),
	(15, 6, 0.1900),
	(16, 2, 5345.3400),
	(17, 11, 76653.2000),
	(18, 1, 235469.8900);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;


-- Dumping structure for table bank.account_holders
DROP TABLE IF EXISTS `account_holders`;
CREATE TABLE IF NOT EXISTS `account_holders` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `ssn` char(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bank.account_holders: ~12 rows (approximately)
/*!40000 ALTER TABLE `account_holders` DISABLE KEYS */;
INSERT INTO `account_holders` (`id`, `first_name`, `last_name`, `ssn`) VALUES
	(1, 'Susan', 'Cane', '1234567890'),
	(2, 'Kim', 'Novac', '1234567890'),
	(3, 'Jimmy', 'Henderson', '1234567890'),
	(4, 'Steve', 'Stevenson', '1234567890'),
	(5, 'Bjorn', 'Sweden', '1234567890'),
	(6, 'Kiril', 'Petrov', '1234567890'),
	(7, 'Petar', 'Kirilov', '1234567890'),
	(8, 'Michka', 'Tsekova', '1234567890'),
	(9, 'Zlatina', 'Pateva', '1234567890'),
	(10, 'Monika', 'Miteva', '1234567890'),
	(11, 'Zlatko', 'Zlatyov', '1234567890'),
	(12, 'Petko', 'Petkov Junior', '1234567890');
/*!40000 ALTER TABLE `account_holders` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;


-- find full name
DELIMITER //
CREATE PROCEDURE `usp_get_holders_full_name`()
BEGIN
	SELECT CONCAT(`first_name`, ' ', `last_name`) AS `full_name`
    FROM `account_holders`
    ORDER BY `full_name`, `id`;
END //
DELIMITER ;

-- people with balance higher than 
DELIMITER //
CREATE PROCEDURE `usp_get_holders_with_balance_higher_than`(`comparative_value` DECIMAL(19, 4))
BEGIN
	SELECT ah.`first_name`, ah.`last_name` 
	FROM `account_holders` AS ah
	JOIN `accounts` AS a
	ON a.`account_holder_id` = ah.`id`
    GROUP BY a.`account_holder_id`
    HAVING SUM(a.`balance`) > `comparative_value`
	ORDER BY a.`account_holder_id`;
END //
DELIMITER ;

-- future value functions 
DELIMITER //
CREATE FUNCTION `ufn_calculate_future_value`(`sum` DECIMAL(19, 4), `interest` DOUBLE, `years` INT)
RETURNS DECIMAL(19, 4)  
DETERMINISTIC   
BEGIN 
	RETURN `sum` * POW(1 + `interest`, `years`);
END //
DELIMITER ;

-- calculating interest (future value functions needed in judge)
DELIMITER //
CREATE PROCEDURE `usp_calculate_future_value_for_account`(`acc_id` INT, `interest` DECIMAL(19,4)) 
BEGIN
	SELECT a.`id` AS `account_id`,
	ah.`first_name`,
	ah.`last_name`,
	a.`balance` AS `current_balance`,
	`ufn_calculate_future_value`(a.`balance`, `interest`, 5) AS `balance_in_5_years` 
	FROM `accounts` AS a
	JOIN `account_holders` AS ah
	ON a.`account_holder_id` = ah.`id`
	WHERE a.`id` = `acc_id`;
END //
DELIMITER ;
call `usp_calculate_future_value_for_account`(1, 0.1);

-- deposit money
DELIMITER //
CREATE PROCEDURE `usp_deposit_money`(`account_id` INT, `money_amount` DECIMAL(19, 4)) 
BEGIN
	IF(SELECT COUNT(*) FROM `accounts`
		WHERE `id` = `account_id`) = 0
		OR (`money_amount` <= 0)
		THEN ROLLBACK;
    ELSE 
		UPDATE `accounts`
        SET `balance` = `balance` + `money_amount`
        WHERE `id` = `account_id`;
	END IF;
END //
DELIMITER ;

-- withdraw money
DELIMITER //
CREATE PROCEDURE `usp_withdraw_money`(`account_id` INT, `money_amount` DECIMAL(19, 4)) 
BEGIN
	START TRANSACTION;
	IF(SELECT COUNT(*) FROM `accounts`
		WHERE `id` = `account_id`) = 0
		OR (`money_amount` <= 0)
        OR ((SELECT `balance` FROM `accounts`
        WHERE `id` = `account_id`) <= `money_amount`)
		THEN ROLLBACK;
    ELSE 
		UPDATE `accounts`
        SET `balance` = `balance` - `money_amount`
        WHERE `id` = `account_id`;
	END IF;
END  //
DELIMITER ;

-- transfer money
DELIMITER //
CREATE PROCEDURE `usp_transfer_money`(`from_account_id` INT, `to_account_id` INT, `amount` DECIMAL(19, 4))
BEGIN
	START TRANSACTION;
		IF (SELECT `id` FROM `accounts` 
		WHERE `id` = `from_account_id`) IS NULL
		OR (SELECT `id` FROM `accounts` 
		WHERE `id` = `to_account_id`) IS NULL
		OR `from_account_id` = `to_account_id`
		OR `amount` < 0
		OR ((SELECT `balance` FROM `accounts`
		WHERE `id` = `from_account_id`) - `amount` < 0)
		THEN ROLLBACK;
    ELSE 
		UPDATE `accounts`
        SET `balance` = `balance` - `amount`
		WHERE `id` = `from_account_id`;
        UPDATE `accounts`
        SET `balance` = `balance` + `amount`
        WHERE `id` = `to_account_id`;
    END IF;
END //
DELIMITER ;

-- log accounts trigger
CREATE TABLE `logs` 
(`log_id` INT PRIMARY KEY AUTO_INCREMENT, 
`account_id` INT,
`old_sum` DECIMAL(19, 4),
`new_sum` DECIMAL(19, 4));

DELIMITER //
CREATE TRIGGER `tr_update_accounts`
AFTER UPDATE
ON `accounts`
FOR EACH ROW
BEGIN
	INSERT INTO `logs` (`account_id`, `old_sum`, `new_sum`)
    VALUES  (OLD.`id`, OLD.`balance`, NEW.`balance`);
END //
DELIMITER ;

-- emails triger
CREATE TABLE `logs` 
(`log_id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT, 
`account_id` INT,
`old_sum` DECIMAL(19, 4),
`new_sum` DECIMAL(19, 4));

CREATE TABLE `notification_emails`
(`id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
`recipient` INT, 
`subject` VARCHAR(255),
`body` TEXT);

DELIMITER //
CREATE TRIGGER `tr_notification`
AFTER UPDATE
ON `accounts`
FOR EACH ROW
BEGIN 
	INSERT INTO `logs` (`account_id`, `old_sum`, `new_sum`)
    VALUES  (OLD.`id`, OLD.`balance`, NEW.`balance`);
    
	INSERT INTO `notification_emails` (`recipient`, `subject`, `body`)
    VALUES (OLD.`id`,
    CONCAT('Balance change for account: ', OLD.`id`),
    CONCAT('On ', NOW(), ' your balance was changed from ', OLD.`balance`, ' to ', NEW.`balance`, '.'));
END //
DELIMITER ; 