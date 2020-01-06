DROP DATABASE `discuss_forum`;
CREATE DATABASE `discuss_forum`;
USE `discuss_forum`;

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
`session_id` VARCHAR(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
`ip_address` VARCHAR(16) COLLATE utf8_bin NOT NULL DEFAULT '0',
`user_agent` VARCHAR(120) COLLATE utf8_bin DEFAULT NULL,
`last_activity` INT(10) UNSIGNED NOT NULL DEFAULT '0',
`user_data` TEXT COLLATE utf8_bin NOT NULL,
PRIMARY KEY (`session_id`),
KEY `last_activity_idx` (`last_activity`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
`cm_id` INT(11) NOT NULL AUTO_INCREMENT,
`ds_id` INT(11) NOT NULL,
`cm_body` TEXT NOT NULL,
`cm_created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
`usr_id` INT(11) NOT NULL,
`cm_is_active` INT(1) NOT NULL,
PRIMARY KEY (`cm_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `discussions`;
CREATE TABLE `discussions`(
`ds_id` INT(11) NOT NULL AUTO_INCREMENT,
`usr_id` INT(11) NOT NULL,
`ds_title` VARCHAR(255) NOT NULL,
`ds_body` TEXT NOT NULL,
`ds_created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
`ds_is_active` INT(1) NOT NULL,
PRIMARY KEY (`ds_id`)
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
`usr_id` INT(11) NOT NULL AUTO_INCREMENT,
`usr_name` VARCHAR(25) NOT NULL,
`usr_hash` VARCHAR(255) NOT NULL,
`usr_email` VARCHAR(125) NOT NULL,
`usr_created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
`usr_is_active` INT(1) NOT NULL,
`usr_level` INT(1) NOT NULL,
PRIMARY KEY (`usr_id`)
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;