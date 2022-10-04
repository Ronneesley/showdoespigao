use espigao;

CREATE TABLE usuario(
  id INT NOT NULL AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  senha varchar(30) NOT NULL,
  chave_de_autenticacao_do_google varchar(100) NOT NULL,
  PRIMARY KEY (id)
  
);

CREATE TABLE pontuacao(
    id INT NOT NULL AUTO_INCREMENT,
    id_usuario INT , 
    pontuacao INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY pontuacao(id_usuario) REFERENCES usuario (id)
        ON DELETE SET NULL
);

