-- -----------------------------------------------------
-- Schema show_do_espigao
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `show_do_espigao` ;
USE `show_do_espigao` ;

-- -----------------------------------------------------
-- Table `show_do_espigao`.`opcoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `show_do_espigao`.`opcoes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `questao` INT NOT NULL,
  `descricao` TEXT NOT NULL,
  PRIMARY KEY (`id`)
);


-- -----------------------------------------------------
-- Table `show_do_espigao`.`questoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `show_do_espigao`.`questoes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` TEXT NOT NULL,
  `nivel` INT NOT NULL,
  `resposta_correta` INT NULL,
  PRIMARY KEY (`id`)
);


-- -----------------------------------------------------
-- Table `show_do_espigao`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `show_do_espigao`.`usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `senha` VARCHAR(32) NOT NULL,
  `chave_autenticacao_google` VARCHAR(45) NULL,
  PRIMARY KEY (`id`)
);


-- -----------------------------------------------------
-- Table `show_do_espigao`.`pontuacoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `show_do_espigao`.`pontuacoes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `usuario` INT NOT NULL,
  `pontuacao` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `usuario`
    FOREIGN KEY (`id`)
    REFERENCES `show_do_espigao`.`usuarios` (`id`)
);

 ALTER TABLE `show_do_espigao`.`opcoes` ADD CONSTRAINT `fk_opcoes_questoes1`
    FOREIGN KEY (`questao`)
    REFERENCES `show_do_espigao`.`questoes` (`id`);
    
ALTER TABLE `show_do_espigao`.`questoes` ADD  CONSTRAINT `fk_questoes_opcoes1`
    FOREIGN KEY (`resposta_correta`)
    REFERENCES `show_do_espigao`.`opcoes` (`id`)