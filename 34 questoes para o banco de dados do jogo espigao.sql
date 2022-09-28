
DROP DATABASE espigao;

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


INSERT INTO questoes (descricao, nivel) VALUES ("Sobre diagrama de entidade-relacionamento (DER), marque a alternativa que
NÃO apresenta um tipo de entidade", "1"); 
INSERT INTO opcoes (questao, descricao) VALUES (1, "Entidade Fraca"),(1, "Entidade Associativa"),(1, "Entidade Agregada"),(1, "Entidade Composta");

UPDATE questoes SET correta = 4 WHERE id = 1; 
-- Trocar os updates pros id das questões corretas

INSERT INTO questoes (descricao, nivel) VALUES ("Big Data Há situações em que os dados não são organizados
seguindo um modelo de dados predeterminado e nem um esquema. Esses dados denominam-se", "2");
INSERT INTO opcoes (questao, descricao) VALUES (2, "Não Estruturados."),(2, "Estruturados"),(2, "semiestruturados"),(2, "ELT");


UPDATE questoes SET correta = 5 WHERE id = 2;


INSERT INTO questoes (descricao, nivel) VALUES ("Uma das soluções de Big Data mais presentes no mercado é o Apache Spark. 
Quanto a essa framework, assinale a alternativa correta. ", "3");
INSERT INTO opcoes (questao, descricao) VALUES (3, "É de código fechado"),(3, "Não possui um SG de arquivos próprio"),(3, "Não suporta tempo real"),(3, "Suporta apenas SQL");


UPDATE questoes SET correta = 10 WHERE id = 3;


INSERT INTO questoes (descricao, nivel) VALUES ("Assinale a opção que apresenta a técnica de levantamento de requisitos sociais e organizacionais, que o analista observa o trabalho diário", "4");
INSERT INTO opcoes (questao, descricao) VALUES (4, "workshop"),(4, "etnografia"),(4, "entrevista"),(4, "prototipagem");


UPDATE questoes SET correta = 14 WHERE id = 4;

INSERT INTO questoes (descricao, nivel) VALUES ("Dentre tais subconjuntos, os comandos SQL utilizados para manipular estruturas de base de dados Oracle, 
 incluindo tabelas, encontram-se em", "5");
INSERT INTO opcoes (questao, descricao) VALUES (5, "DDL e DML"),(5, "DDL"),(5, "DML"),(5, "SCS");
UPDATE questoes SET correta = 17  WHERE id = 5;
-- 20 
INSERT INTO questoes (descricao, nivel) VALUES ("Um banco de dados relacional, quando toda coluna não chave de uma tabela 
depende diretamente da chave primária a tabela está, no mínimo, na:", "6");
INSERT INTO opcoes (questao, descricao) VALUES (6, "primeira forma normal (1FN)"),(6, "segunda forma normal (2FN)"),(6, "terceira forma normal (3FN)"),(6, "quarta forma normal (4FN)");
UPDATE questoes SET correta = 23 WHERE id = 6;


-- 24
INSERT INTO questoes (descricao, nivel) VALUES ("Em um projeto de data mining, a coleta do dado que será garimpado ocorre no processo de: ", "7");
INSERT INTO opcoes (questao, descricao) VALUES (7, "mineração"),(7, "preparação"),(7, "aplicação"),(7, "associação");
UPDATE questoes SET correta = 26 WHERE id = 7;
-- 28
INSERT INTO questoes (descricao, nivel) VALUES ("Dos comandos SQL a seguir, qual NÃO faz parte do tipo DDL? ", "8");
INSERT INTO opcoes (questao, descricao) VALUES (8, "SELECT"),(8, "DROP"),(8, "ALTER"),(8, "CREATE");
UPDATE questoes SET correta = 29 WHERE id = 8;
-- 32
INSERT INTO questoes (descricao, nivel) VALUES ("Realizar operações, como inclusão, busca, exclusão e alteração em um BD, os usuários de SGBD utilizam-se da linguagem específica para isso, chamada; ", "9");
INSERT INTO opcoes (questao, descricao) VALUES (9, "VDL."),(9, "DML"),(9, "DDL"),(9, "SDL");
UPDATE questoes SET correta = 34 WHERE id = 9;
-- 36
INSERT INTO questoes (descricao, nivel) VALUES ("Qual destes passwords foi o mais usado na internet?", "10");
INSERT INTO opcoes (questao, descricao) VALUES (10, "12345"),(10, "ABCD"),(10, "A1B1C1D"),(10, "MAEPAI1");
UPDATE questoes SET correta = 37 WHERE id = 10;
-- 40
INSERT INTO questoes (descricao, nivel) VALUES ("Cabeçalhos como HTTP são para uso dos clientes e outros para uso dos servidores.
Para clientes, quando efetuando suas requisições, EXCETO o:", "11");
INSERT INTO opcoes (questao, descricao) VALUES (11, "Last-Modified."),(11, "User-Agent."),(11, "Accept-Charset."),(11, "Authorization.");
UPDATE questoes SET correta =  41 WHERE id = 11;
-- 44
INSERT INTO questoes (descricao, nivel) VALUES("Para copiar e colar uma formatação ao invés dos caracteres, no word 2016, a Ferramenta Pincel de Formatação, utiliza-se atalhos:", "12");
INSERT INTO opcoes (questao, descricao) VALUES (12, "Ctrl + Shift + C | Ctrl + Shift + V"),(12, "Ctrl + Alt + C | Ctrl + Alt + V"),(12, "Shift + Alt + C | Shift + Alt + V"),(12, "DWin + C | Win + V");
UPDATE questoes SET correta = 45  WHERE id = 12;
-- 48
INSERT INTO questoes (descricao, nivel) VALUES ("O “cérebro” componetente do Hardware é responsável pela execução de instruções programadas e procedimentos fornecidos pelos usuários, é chamado:", "13");
INSERT INTO opcoes (questao, descricao) VALUES (13, "BIOS"),(13, "HD"),(13, "CPU"),(13, "Disco rígido");
UPDATE questoes SET correta = 47 WHERE id = 13;
-- 52
INSERT INTO questoes (descricao, nivel) VALUES ("Nos navegadores, sites preferidos ou acessados com frequência que são identificados pelo símbolo de estrela, referem-se aos", "14");
INSERT INTO opcoes (questao, descricao) VALUES (14, "Cookies"),(14, "Spams"),(14, "Favoritos"),(14, "op sites");
UPDATE questoes SET correta = 51 WHERE id = 14;
-- 56
INSERT INTO questoes (descricao, nivel) VALUES ("No contexto de fundamentos de redes de computadores,
selecione a alternativa que descreve corretamente a função do protocolo denominado TCP:", "15");
INSERT INTO opcoes (questao, descricao) VALUES (15, "Tradução"),(15, "Interligação"),(15, "Interconexão"),(15, "Transmissão");
UPDATE questoes SET correta = 56 WHERE id = 15;
-- 60
INSERT INTO questoes (descricao, nivel) VALUES ("O SGBD padrão de mercado, cuja estrutura consiste em relações (tabelas) que contêm atributos (colunas) e tuplas (registros),
é do tipo", "16");
INSERT INTO opcoes (questao, descricao) VALUES (16, "NoSQL"),(16, "Relacional"),(16, "Orientado a Objetos"),(16, "Orientado a Serviços");
UPDATE questoes SET correta = 58 WHERE id = 16;
-- 64
INSERT INTO questoes (descricao, nivel) VALUES ("Assinale, das alternativas abaixo, a única que identifica incorretamente um aplicativo típico da Internet", "17");
INSERT INTO opcoes (questao, descricao) VALUES (17, "Instagram"),(17, "Apple"),(17, "YouTube"),(17, "Gmail");
UPDATE questoes SET correta =  61 WHERE id = 17;
-- 68
INSERT INTO questoes (descricao, nivel) VALUES ("Na guia Configurar Apresentação de Slides do aplicativo Microsoft PowerPoint,
podemos escolher os tipos de apresentação abaixo descritos, exceto:", "18");
INSERT INTO opcoes (questao, descricao) VALUES (18, "exibida por um orador (tela inteira)"),(18, "exibida em background (tela estendida)"),(18, "apresentada por uma pessoa (janela)"),(18, "apresentada em um quiosque (tela inteira)");
UPDATE questoes SET correta = 66  WHERE id = 18;
-- 72
INSERT INTO questoes (descricao, nivel) VALUES ("Assinale, das alternativas abaixo, a única que 
identifica corretamente a maior e mais usada ferramenta de busca da Internet:", "19");
INSERT INTO opcoes (questao, descricao) VALUES (19, "WhatsApp"),(19, "Microsoft"),(19, "Google"),(19, "Facebook");
UPDATE questoes SET correta = 71 WHERE id = 19;
-- 76
INSERT INTO questoes (descricao, nivel) VALUES ("O Sistema Operacional é o cérebro de um computador. O Sistema Operacional
mais usado no mundo em computadores de mesa e notebooks é o:", "20");
INSERT INTO opcoes (questao, descricao) VALUES (20, "Android"),(20, "Linux"),(20, "Mac OS "),(20, "Windows");
UPDATE questoes SET correta =  80 WHERE id = 20;
-- 80
INSERT INTO questoes (descricao, nivel) VALUES ("Assinale, das alternativas abaixo, a única que identifica 
incorretamente a extensão de arquivo que o MS-WORD suporta para gravar.", "21");
INSERT INTO opcoes (questao, descricao) VALUES (21, ".doc"),(21, ".pdf"),(21, ".docx"),(21, ".xlx");
UPDATE questoes SET correta = 84 WHERE id = 21;
-- 84
INSERT INTO questoes (descricao, nivel) VALUES ("Um spyware capaz de monitorar e enviar, para um hacker, prints e informações do posicionamento do cursor do mouse na tela do dispositivo é chamado:", "22");
INSERT INTO opcoes (questao, descricao) VALUES (22, "Keylogger"),(22, "Adware"),(22, "Rootkit"),(22, "Screenlogger");
UPDATE questoes SET correta = 85 WHERE id = 22;
-- 88
INSERT INTO questoes (descricao, nivel) VALUES ("Na configuração padrão de um aplicativo de correio eletrônico, ao receber uma mensagem confiável, é salva em/na  ", "23");
INSERT INTO opcoes (questao, descricao) VALUES (23, "caixa de entrada"),(23, "rascunhos"),(23, "caixa de saída"),(23, "itens enviados");
UPDATE questoes SET correta =  89 WHERE id = 23;
-- 92
INSERT INTO questoes (descricao, nivel) VALUES ("Assinale a alternativa que apresenta a extensão de um arquivo compactado", "24");
INSERT INTO opcoes (questao, descricao) VALUES (24, ".txt"),(24, ".bmp"),(24, ".zip"),(24, ".html");
UPDATE questoes SET correta = 95 WHERE id = 24;
-- 96
INSERT INTO questoes (descricao, nivel) VALUES ("Qual é o termo usado para se referir aos e-mails não solicitados, 
que geralmente são enviados para muitas pessoas?", "25");
INSERT INTO opcoes (questao, descricao) VALUES (25, "Malware"),(25, "Spam"),(25, "Worm"),(25, "Ransomware");
UPDATE questoes SET correta = 98 WHERE id = 25;
-- 100
INSERT INTO questoes (descricao, nivel) VALUES ("É considerada extensão de arquivos de textos:", "26");
INSERT INTO opcoes (questao, descricao) VALUES (26, ".docx "),(26, ".jpeg"),(26, ".mp3"),(26, ".cdr");
UPDATE questoes SET correta = 101 WHERE id = 26;
-- 104
INSERT INTO questoes (descricao, nivel) VALUES ("A respeito do navegador Google Chrome versão 103.0.5060.134,
quais as teclas de atalho para abrir uma “Nova janela anônima”? ", "27");
INSERT INTO opcoes (questao, descricao) VALUES (27, "Ctrl + U"),(27, "Ctrl + Alt + F"),(27, "Ctrl + N"),(27, "Ctrl + Shift + N");
UPDATE questoes SET correta = 108 WHERE id = 27;
-- 108
INSERT INTO questoes (descricao, nivel) VALUES ("O Windows 10, em sua instalação padrão, no Explorador de Arquivos, a antiga funcionalidade “Meu Computador” recebe a nova nomenclatura de", "28");
INSERT INTO opcoes (questao, descricao) VALUES (28, "Computador Gerencial"),(28, "Este Computador"),(28, "Status Geral"),(28, "Root");
UPDATE questoes SET correta =  110 WHERE id = 28;
-- 112
INSERT INTO questoes (descricao, nivel) VALUES ("Qual é a mídia portátil mais utilizada pelos usuários de computadores
atualmente e que é utilizado por meio de uma porta USB?", "29");
INSERT INTO opcoes (questao, descricao) VALUES (29, "Android"),(29, "Gabinete"),(29, "Disco Rígido (HD)"),(29, "Pen Drive");
UPDATE questoes SET correta = 116 WHERE id = 29;
-- 116
INSERT INTO questoes (descricao, nivel) VALUES ("Qual é a função das teclas de atalho CTRL+X, no programa Microsoft Word?", "30");
INSERT INTO opcoes (questao, descricao) VALUES (30, "Colar um conteúdo copiado"),(30, "Salvar um documento"),(30, "Recortar o conteúdo selecionado"),(30, "Criar um novo documento");
UPDATE questoes SET correta = 119 WHERE id = 30;
-- 120
INSERT INTO questoes (descricao, nivel) VALUES ("No Windows 10, o nome da assistente virtual de produtividade pessoal é: ", "31");
INSERT INTO opcoes (questao, descricao) VALUES (31, "Alexa"),(31, "Cortana"),(31, "Lucy"),(31, "Siri");
UPDATE questoes SET correta = 122 WHERE id = 31;
-- 124
INSERT INTO questoes (descricao, nivel) VALUES ("Corresponde o processo de desenvolvimento de
software, cujos valores centrais são comunicação, simplicidade, feedback, coragem e respeito: ", "32");
INSERT INTO opcoes (questao, descricao) VALUES (32, "Scrum"),(32, "TDD"),(32, "XP"),(32, "Modelo interativo");
UPDATE questoes SET correta = 127 WHERE id = 32;
-- 128
INSERT INTO questoes (descricao, nivel) VALUES ("No MS-Windows 7 e 10, a combinação de teclas Ctrl + Shift +Esc está associada à abertura do:", "33");
INSERT INTO opcoes (questao, descricao) VALUES (33, "Painel de Controle"),(33, "Gerenciamento de Tarefas"),(33, "Área de trabalho"),(33, "User Documents");
UPDATE questoes SET correta = 130 WHERE id = 33;
-- 132
INSERT INTO questoes (descricao, nivel) VALUES ("Na Informática com a diversidade de softwares:
Qual aplicativo do Microsoft Office usado para criar e editar planilhas de cálculo?", "34");
INSERT INTO opcoes (questao, descricao) VALUES (34, "Outlook"),(34, "OneNote"),(34, "Excel"),(34, "Word");
UPDATE questoes SET correta = 135 WHERE id = 34;
-- 136