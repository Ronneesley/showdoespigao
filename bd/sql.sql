CREATE DATABASE espigao;

use espigao;

CREATE TABLE questoes (
  id INT NOT NULL AUTO_INCREMENT,
  descricao TEXT NOT NULL,
  nivel INT NOT NULL,
  correta INT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE opcoes (
  id INT NOT NULL AUTO_INCREMENT,
  questao INT NOT NULL,
  descricao TEXT NOT NULL,
  PRIMARY KEY (id),
  INDEX fk_opcoes_questoes1_idx (questao ASC),
  CONSTRAINT fk_opcoes_questoes1
    FOREIGN KEY (questao)
    REFERENCES questoes (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



-- ALTER TABLE questoes ADD FOREIGN KEY (correta) REFERENCES respostas(id);
-- A inclusão da chave estrangeira não é permitida mesmo após a criação das duas tabelas
-- Error Code: 1005. Can't create table `espigao`.`questoes` (errno: 150 "Foreign key constraint is incorrectly formed")
