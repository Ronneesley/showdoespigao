-- A inclusão da chave estrangeira não é permitida na criação pois a tabela não existe, por isso o uso do alter
ALTER TABLE questoes ADD FOREIGN KEY (correta) REFERENCES opcoes(id);