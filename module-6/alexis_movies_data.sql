-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema CSD430
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `CSD430` ;

-- -----------------------------------------------------
-- Schema CSD430
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `CSD430` DEFAULT CHARACTER SET latin1 ;
USE `CSD430` ;

-- -----------------------------------------------------
-- Table `CSD430`.`alexis_movies_data`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CSD430`.`alexis_movies_data` (
  `movie_id` INT(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NULL DEFAULT NULL,
  `genre` VARCHAR(50) NULL DEFAULT NULL,
  `release_year` INT(11) NULL DEFAULT NULL,
  `director` VARCHAR(100) NULL DEFAULT NULL,
  `rating` DECIMAL(2,1) NULL DEFAULT NULL,
  PRIMARY KEY (`movie_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO alexis_movies_data (title, genre, release_year, director, rating) VALUES
('Superman', 'Action', 2025, 'James Gunn', 0.0),
('Spider-Man: Into the Spider-Verse', 'Animation', 2018, 'Bob Persichetti', 8.4),
('Legally Blonde', 'Comedy', 2001, 'Robert Luketic', 6.5),
('Bullet Train', 'Action', 2022, 'David Leitch', 7.3),
('Deadpool & Wolverine', 'Action', 2024, 'Shawn Levy', 0.0),
('Captain America: The Winter Soldier', 'Action', 2014, 'Anthony Russo', 7.8),
('Thunderbolts', 'Action', 2025, 'Jake Schreier', 0.0),
('Toy Story 2', 'Animation', 1999, 'John Lasseter', 7.9),
('The Princess and the Frog', 'Animation', 2009, 'Ron Clements', 7.2),
('Beauty and the Beast', 'Animation', 1991, 'Gary Trousdale', 8.0);
