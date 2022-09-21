
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema espigao
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `espigao` DEFAULT CHARACTER SET utf8 ;
USE `espigao` ;

-- -----------------------------------------------------
-- Table `espigao`.`opcoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `espigao`.`opcoes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `questao` INT NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_opcoes_questoes1_idx` (`questao` ASC) ,
  CONSTRAINT `fk_opcoes_questoes1`
    FOREIGN KEY (`questao`)
    REFERENCES `espigao`.`questoes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `espigao`.`questoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `espigao`.`questoes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(150) NOT NULL,
  `nivel` VARCHAR(45) NOT NULL,
  `correta` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_questoes_opcoes1_idx` (`correta` ASC) ,
  CONSTRAINT `fk_questoes_opcoes1`
    FOREIGN KEY (`correta`)
    REFERENCES `espigao`.`opcoes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
