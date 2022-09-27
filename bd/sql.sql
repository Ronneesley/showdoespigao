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



-- A inclusão da chave estrangeira não é permitida na criação pois a tabela não existe, por isso o uso do alter
ALTER TABLE questoes ADD FOREIGN KEY (correta) REFERENCES opcoes(id);
