CREATE TABLE opcoes (
  id INT NOT NULL AUTO_INCREMENT,
  questao INT NOT NULL,
  descricao TEXT NOT NULL,
  PRIMARY KEY (id),
  INDEX fk_opcoes_questoes1_idx (questao ASC),
  CONSTRAINT fk_opcoes_questoes1
    FOREIGN KEY (questao)
    REFERENCES questoes (id)
);