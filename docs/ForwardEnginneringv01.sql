-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`bosses`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`bosses` ;

CREATE TABLE IF NOT EXISTS `mydb`.`bosses` (
  `id` INT NOT NULL DEFAULT 0,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`employees`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`employees` ;

CREATE TABLE IF NOT EXISTS `mydb`.`employees` (
  `id` INT NOT NULL DEFAULT 0,
  `name` VARCHAR(45) NOT NULL,
  `bosses_id` INT NOT NULL,
  PRIMARY KEY (`id`, `bosses_id`),
  UNIQUE INDEX `idempleados_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_employees_bosses_idx` (`bosses_id` ASC) VISIBLE,
  CONSTRAINT `fk_employees_bosses`
    FOREIGN KEY (`bosses_id`)
    REFERENCES `mydb`.`bosses` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = '						';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
