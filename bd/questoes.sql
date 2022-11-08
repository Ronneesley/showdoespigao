-- Geovanna
use show_do_espigao;

-- A inclusão da chave estrangeira não é permitida na criação pois a tabela não existe, por isso o uso do alter
ALTER TABLE questoes ADD FOREIGN KEY (correta) REFERENCES opcoes(id);


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
UPDATE questoes SET correta = 1z
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

-----------------------------------------------------------------------------------------------------------------------------------------

--Adriano:
INSERT INTO questoes (descricao, nivel) VALUES ("Com referência à engenharia de testes e qualidade com foco na identificação de inconsistências entre o propósito de ferramentas de software e as características dos software em desenvolvimento, assinale a opção correta.", "35");
INSERT INTO opcoes (questao, descricao) VALUES (35, "Para verificação da aderência do software aos estilos de programação normatizados na organização, devem-se utilizar comparadores de entrada e saída."),(35, "Para automação de testes de um software que possua grande número de requisitos associados ao acesso a documentos eletrônicos indexados, recomenda-se o uso de analisadores de fluxo de dados."),(35, "Para automação de testes de um software cuja entrada de dados seja, em sua maioria, de natureza algébrica, devem-se adotar simuladores de ambiente."),(35, "Para automação de testes de um software em desenvolvimento cujo uso será em condições de tempo-real, devem-se adotar sistemas de execução simbólica para simulação das condições operacionais reais.");
UPDATE questoes SET correta = 137 WHERE id = 35;
-- 140 letra  b
INSERT INTO questoes (descricao, nivel) VALUES ("Considerando uma organização na qual a abordagem de test driven development (TDD) esteja implementada, assinale a opção correta.", "36");
INSERT INTO opcoes (questao, descricao) VALUES (36, "Nessa organização, ocorre a execução de iterações com ciclo longo, isto é, com duração de alguns meses.
"),(36, "O refactoring é uma das primeiras atividades realizada no início de cada iteração."),(36, "No início de cada iteração, a primeira atividade realizada pela equipe de desenvolvimento é produzir o código que será validado através de testes.
"),(36, "Há coerência e inter-relação com os princípios promovidos pela prática da extreme programming (XP).");
UPDATE questoes SET correta = 144 WHERE id = 36;
-- 144 letra d
INSERT INTO questoes (descricao, nivel) VALUES ("Com referência ao fortalecimento da capacidade de teste de software em uma organização produtora de software, assinale a opção correta acerca da aplicação de métodos e técnicas de teste de software.", "37");
INSERT INTO opcoes (questao, descricao) VALUES (37, "No uso de técnicas que busquem quebrar o funcionamento de um sistema em desenvolvimento, para se mostrar o maior número de potenciais para falha, podem-se adotar técnicas embasadas na especificação do software, tais como o particionamento em classes de equivalência, a análise de valores limite, tabelas de decisão e máquinas de estado finito."),(37, "Como é demandada prioridade máxima na implantação de um ambiente propício a testes de regressão, uma das atitudes recomendadas é reduzir o esforço na automação dos testes unitários, bem como nos testes de requisitos não funcionais, de forma a concentrar esforços nos teses de integração e nos testes de sistema."),(37, "Caso seja demandado o uso de técnicas que busquem quebrar o funcionamento do sistema em desenvolvimento, para se mostrar o maior número de potenciais para falha, podem-se adotar técnicas embasadas no código, entre as quais se inclui o emprego de critérios baseados na usabilidade do sistema."),(37, "Na concepção de um processo de teste de software para uma organização com pouca maturidade nessa área, devem-se estimular disputas entre os times de programação e de teste, visando criar um ambiente competitivo e dinâmico.");
UPDATE questoes SET correta = 145 WHERE id = 37;
-- 148 
INSERT INTO questoes (descricao, nivel) VALUES ("É possível medir a temperatura do processador por meio do Setup do microcomputador ou de um programa específico para essa finalidade.", "37");
INSERT INTO opcoes (questao, descricao) VALUES (38, "Sim"),(38, "Não"),(38, "Talvez"),(38, "Nenhuma das anteriores");
UPDATE questoes SET correta = 149 WHERE id = 38; 
-- 152 LETRA A
INSERT INTO questoes (descricao, nivel) VALUES ("O HDD (Hard Disk Driver), também conhecido com HD, pode ser substituído por um produto que está sendo difundido atualmente. Nesse caso, o hardware que está em ascensão é: ", "39");
INSERT INTO opcoes (questao, descricao) VALUES (39 "Pendrive."),(39, "CMOS(Complementary metal-oxide-semiconductor)."),(39, "SSD (Solid State Drive)."),(39, "BD-R (Blu-ray Recordable Disc).");
UPDATE questoes SET correta = 155 WHERE id = 39;
-- 156 LETRA C 
INSERT INTO questoes (descricao, nivel) VALUES ("Acerca de aspectos diversos pertinentes a objetos de avaliação associados à análise de sistemas, julgue os itens que se seguem. A ADSI (Active Directory Service Interfaces) permite a execução de tarefas administrativas comuns, como a adição de novos usuários, o gerenciamento de impressoras e a localização de recursos em um ambiente de computação distribuído.", "40");
INSERT INTO opcoes (questao, descricao) VALUES (40, "Sim"),(40, "Não"),(40, "Sim, porém o uso de sistema distribuído deve ser de acessível a todos"),(40, "Não, mas existem quantidades específicas para que a resposta seja negativa");
UPDATE questoes SET correta = 157 WHERE id = 40;
-- 160 lETRA A
INSERT INTO questoes (descricao, nivel) VALUES ("Considerando o endereço de memória 0AE3, em base hexadecimal, julgue os itens seguintes. O endereço de memória em questão é um exemplo de endereço válido em microprocessadores x86.", "41");
INSERT INTO opcoes (questao, descricao) VALUES (41, "O endereço não é hexadecimal"),(41, "Certo"),(41, "O endereço é binário"),(41, "Errado");
UPDATE questoes SET correta = 162 WHERE id = 41;
-- 164 LETRA B
INSERT INTO questoes (descricao, nivel) VALUES ("O analista de sistemas Lucas definiu uma nova política para o ciclo de vida de índices, denominada EspacoPolicy, no Elasticsearch. A EspacoPolicy, quando aplicada a um índice B, deve disparar rollover automático de B para um novo índice quando B atingir determinado nível de ocupação de espaço em disco.
Essa condição para o rollover de um índice baseado no nível de espaço em disco ocupado foi definida em EspacoPolicy, por Lucas, para a fase do ciclo de vida de índices:", "42");
INSERT INTO opcoes (questao, descricao) VALUES (42, "hot;"),(42, "warm;"),(42, "cold;"),(42, "");
UPDATE questoes SET correta = 165 WHERE id = 42;
-- 168 LETRA A
INSERT INTO questoes (descricao, nivel) VALUES ("A analista Sara modificou alguns arquivos do container Docker TJSiteContainer que se encontra em execução. Para criar uma imagem Docker a partir do estado atual de TJSiteContainer, a fim de persistirem as modificações efetuadas em seus arquivos, Sara deve utilizar o comando:", "43");
INSERT INTO opcoes (questao, descricao) VALUES (43, "docker commit"),(43, "docker diff"),(43, "docker export"),(43, "docker image save");
UPDATE questoes SET correta = 169 WHERE id = 43;
-- 172 letra a 
INSERT INTO questoes (descricao, nivel) VALUES ("O Sistema Operacional reúne programas, em quase sua totalidade transparentes aos usuários, e ainda desempenham tarefas da mais alta utilidade. Dentro desse cenário a opção que contém exclusivamente serviços executados pelo Sistema Operacional é:", "44");
INSERT INTO opcoes (questao, descricao) VALUES (44, "Administração da memória; Gerenciamento dos dados (leitura e gravação dos periféricos, controle de formatos, etc.); acionamento dos dispositivos (Comunicação e Periféricos) e; gerenciamento de Banco de Dados. "),(44, "Gerenciamento da memória; administração dos dados (leitura e gravação dos periféricos, controle de formatos, etc.); gerenciamento da segurança dos dados e; execução de utilitários (cópias de arquivos, organização de diretórios, etc.)."),(44, "Gerenciamento da memória; acionamento dos dispositivos (Comunicação e Periféricos); gerenciamento de firewall de rede e; execução de utilitários (cópias de arquivos, organização de diretórios, etc.)."),(44, "
Gerenciamento da memória; administração dos dados (leitura e gravação dos periféricos, controle de formatos, etc.); acionamento dos dispositivos (Comunicação e Periféricos) e; execução de utilitários (cópias de arquivos, organização de diretórios, etc.).");
UPDATE questoes SET correta = 176 WHERE id = 44;
-- 176 LETRA D
INSERT INTO questoes (descricao, nivel) VALUES ("De maneira bem simples e objetiva, o sistema operacional refere-se a um ou mais softwares que tem como papel principal gerenciar/administrar todos os recursos presentes em um sistema. Isso abrange desde sistemas de arquivos, passando por componentes do hardware, e até mesmo programas de terceiros. Sobre esse assunto, assinale a alternativa correta.
", "45");
INSERT INTO opcoes (questao, descricao) VALUES (45, "O sistema operacional enxerga os programas dos diversos usuários como Threds, portanto, ele pode garantir a proteção, administração, o gerenciamento e realocação dos recursos."),(45, "O mecanismo de Round Robin não dá prioridades a tarefas mais importantes, sendo inadequado em aplicações que envolvam automação."),(45, "Em um sistema multitasking, o computador executa apenas um programa por vez."),(45, "É função do sistema operacional gerenciar recursos, processadores e armazenamento, porém não é responsabilidade dele escalonar tarefas.");
UPDATE questoes SET correta = 178 WHERE id = 45;
-- 180 LETRA B
INSERT INTO questoes (descricao, nivel) VALUES ("A orquestração automatiza a implantação, o gerenciamento, a escala e a rede dos contêineres. As ferramentas de orquestração de contêineres fornecem um framework para gerenciar arquiteturas de microsserviços e contêineres em escala, e muitas delas são usadas no gerenciamento do ciclo de vida dos contêineres; entre elas, o Docker Swarm é uma plataforma", "46");
INSERT INTO opcoes (questao, descricao) VALUES (46, "De código aberto criada pelo Google para operações de implantação de contêiner, aumento e redução e automação em clusters de hosts."),(46, "De orquestração de contêiner de código aberto, sendo o mecanismo de clusterização nativo para e pelo Docker, utilizando sua mesma linha de comando."),(46, "Que roda sobre o Kubernetes instalado em sistema operacional na versão Enterprise da Red Hat, agregando opções de monitoramento, integração e entrega contínua."),(46, "Usada pela Amazon para fornecer outros serviços aos clientes, como DNS, balanceamento, segurança e monitoramento, se integrando nativamente.");
UPDATE questoes SET correta = 182 WHERE id = 46;
-- 184 LETRA B
INSERT INTO questoes (descricao, nivel) VALUES ("Quanto a serviços IP, julgue os itens subsecutivos.

O serviço de DNS tem capacidade de associar nomes a endereços IPs.", "47");
INSERT INTO opcoes (questao, descricao) VALUES (47, "Certo"),(47, "Certo, mas existe tmabém a possibilidade de usar mais de um serviço para isso"),(47, "Errado"),(47, "Errado, mas ainda é poossível por meio de ferramentas docker");
UPDATE questoes SET correta = 185 WHERE id = 47;
-- 188 LETRA A
INSERT INTO questoes (descricao, nivel) VALUES ("Se uma mudança no provedor de correio eletrônico demanda alteração no serviço DNS para indicar para onde devem ser encaminhadas as mensagens de e-mail enviadas pelo SMTP (simple mail transfer protocol), então o registro que deve ser alterado no serviço DNS é do tipo", "48");
INSERT INTO opcoes (questao, descricao) VALUES (48, "A."),(48, "MX."),(48, "PTR."),(48, "TXT.");
UPDATE questoes SET correta = 190 WHERE id = 48;
-- 192 letra b
INSERT INTO questoes (descricao, nivel) VALUES ("No Linux, um Analista executou um comando para verificar se o Python 3 estava instalado. O comando correto é", "48");
INSERT INTO opcoes (questao, descricao) VALUES (48, "python3 -V"),(48, "lib.python3"),(48, "@python 3"),(48, "?python env3 --version");
UPDATE questoes SET correta = 193 WHERE id = 48;
-- 196 letra a 
INSERT INTO questoes (descricao, nivel) VALUES ("Uma das estratégias para reduzir o tamanho de imagens Docker consiste em:", "49");
INSERT INTO opcoes (questao, descricao) VALUES (49, "Combinar comandos RUN em um único comando";),(49, "Substituir a imagem base por uma versão mais recente;"),(49, "Separar comandos RUN complexos em comandos menores;"),(49, "Compactar arquivos a serem copiados para a imagem e descompactá-los durante a sua geração.");
UPDATE questoes SET correta = 197 WHERE id = 49;
-- 200 letra a
INSERT INTO questoes (descricao, nivel) VALUES ("Em computação, o que significa a sigla CPU e qual a sua utilidade?", "50");
INSERT INTO opcoes (questao, descricao) VALUES (50, "CPU significa Central Processing Unit ou Unidade Central de Processamento, em tradução livre. É a parte de um sistema computacional que realiza as instruções de um programa de computador, para executar a aritmética básica, lógica e a entrada e saída de dados."),(50, "CPU significa Control Pack Universal ou Pacote de Controle Universal, em tradução livre. Basicamente é o conjunto de hardware necessário para montar um computador."),(50, "CPU significa Collar Pair Uniform ou Par de Colar Uniforme, em tradução livre. Trata-se do "cérebro" do computador, que funciona em dois componentes interligados - em formato de colar, sendo uma analogia ao cérebro e cerebelo do corpo humano."),(50, "CPU significa Core Part Unit ou Peça de Unidade Central, em tradução livre. Tem como função transportar a energia elétrica necessária para o computador funcionar.");
UPDATE questoes SET correta = 201 WHERE id = 50;
-- 204 letra a
INSERT INTO questoes (descricao, nivel) VALUES ("Nos microcontroladores existe um mecanismo que permite que diversas tarefas possam ser realizadas, pelo menos aparentemente, de forma simultânea. Dentro desse contexto, desvios na execução dos programas (chamadas de sub-rotinas) são originados por eventos no hardware do microcontrolador. Esse mecanismo descrito é denominado", "51");
INSERT INTO opcoes (questao, descricao) VALUES (51, "Overflow."),(51, "Interrupção."),(51, "UART."),(51, "Deadlock.");
UPDATE questoes SET correta = 206 WHERE id = 51;
-- 208 letra b
INSERT INTO questoes (descricao, nivel) VALUES ("No sistema operacional Linux, em shell scripts para bash, a expressão $! fornece como conteúdo o", "3");
INSERT INTO opcoes (questao, descricao) VALUES (52, "número de argumentos passados como parâmetros na chamada do script pela linha de comando"),(52, "código de status de saída do último comando executado."),(52, "UID (user ID) do usuário logado que está executando o script"),(52, "PID (process ID) do último job executado em background.");
UPDATE questoes SET correta = 212 WHERE id = 52;
-- 212 letra d
INSERT INTO questoes (descricao, nivel) VALUES ("No Docker, uma das formas de fazer contêineres se comunicarem é utilizando", "53");
INSERT INTO opcoes (questao, descricao) VALUES (53, "o comando --public para que os contêineres tenham endereços IP públicos e se comuniquem."),(53, "apenas o comando --port para especificar as portas de cada contêiner."),(53, "os comandos --connect para conectar os contêineres e o --port para especificar as portas de cada contêiner."),(53, "
os comandos --link para conectar os contêineres e o --port para especificar as portas de cada contêiner.");
UPDATE questoes SET correta = 216 WHERE id = 53;
-- 216 letra d
INSERT INTO questoes (descricao, nivel) VALUES ("A memória do computador, também conhecida como memória principal ou memória de sistema, responsável pelo armazenamento temporário de dados e de instruções utilizadas pelos dispositivos periféricos, é:", "54");
INSERT INTO opcoes (questao, descricao) VALUES (54, "RAM (random access memory, ou memória de acesso aleatório)."),(54, "ROM (read only memory, ou memória somente de leitura)."),(54, "unidade central de processamento (CPU)."),(54, "cache de memória.");
UPDATE questoes SET correta = 217 WHERE id = 54;
-- 220 letra a
INSERT INTO questoes (descricao, nivel) VALUES ("A coluna da esquerda apresenta recursos do Ubuntu 20.04 desktop e a da direita, características de cada um. Numere a coluna da direita de acordo com a da esquerda.


1. Shotwell

2. Rhythmbox

3. Remmina

4. Ubuntu Software


( ) Loja de aplicativos

( ) Cliente de área de trabalho remota

( ) Reprodutor de músicas

( ) Organizador de fotos", "55");
INSERT INTO opcoes (questao, descricao) VALUES (55, "3, 2, 1, 4"),(55, "4, 3, 2, 1"),(55, "2, 1, 4, 3 "),(55, "4, 1, 3, 2");
UPDATE questoes SET correta = 222 WHERE id = 55;
-- 224 letra b
INSERT INTO questoes (descricao, nivel) VALUES ("Um arquivo do tipo Dockerfile contém as configurações de um contêiner; para que seja possível, no final, executar esse contêiner, deve ser usado o comando", "56");
INSERT INTO opcoes (questao, descricao) VALUES (56, "docker exec."),(56, "docker build."),(56, "docker volume."),(56, "docker image.");
UPDATE questoes SET correta = 226 WHERE id = 56;
-- 228 letra c
INSERT INTO questoes (descricao, nivel) VALUES ("Um assistente programador está avaliando preventivamente o comportamento de um servidor do MP-GO que executa containers Docker. O assistente deseja verificar os nomes de todos os containers que estão parados e de todos os containers que estão em execução em uma única saída no terminal do servidor.

Para realizar essa verificação usando um simples comando no terminal, o assistente deve usar o comando:", "57");
INSERT INTO opcoes (questao, descricao) VALUES (57, "docker ps -a"),(57, "docker ps -l"),(57, "
docker ps "),(57, "
docker ps -s");
UPDATE questoes SET correta = 229 WHERE id = 57;
-- 232 letra a
INSERT INTO questoes (descricao, nivel) VALUES ("No sistema operacional Linux, o comando newgrp serve para", "58");
INSERT INTO opcoes (questao, descricao) VALUES (58, "alterar a senha de um grupo."),(58, "alterar o GID (group ID) corrente durante uma sessão de login."),(58, "criar um novo grupo no sistema, inicializando-o sem nenhum usuário membro."),(58, "
alterar o grupo associado a um arquivo no sistema de arquivos.");
UPDATE questoes SET correta = 234 WHERE id = 58;
-- 236 letra b
INSERT INTO questoes (descricao, nivel) VALUES ("Para desinstalar um pacote previamente instalado por meio da ferramenta APT (Advanced Package Tool) no sistema operacional Linux, sem remover os arquivos de configuração relativos ao pacote, o comando adequado é (em que ppp é o nome do pacote):", "59");
INSERT INTO opcoes (questao, descricao) VALUES (59, "apt-get purge ppp"),(59, "apt-get remove ppp"),(59, "apt-get autoclean ppp"),(59, "
apt-get clean ppp");
UPDATE questoes SET correta = 238 WHERE id = 59;
-- 240 letra b
INSERT INTO questoes (descricao, nivel) VALUES ("A respeito de diferentes threads de um mesmo processo, pode-se afirmar que", "60");
INSERT INTO opcoes (questao, descricao) VALUES (60, "são executados em sequência, um por vez. Quando um thread termina, o próximo que estava aguardando é iniciado."),(60, "são totalmente independentes, não podendo se comunicar entre si."),(60, "o número total de threads de um processo é limitado ao número total de núcleos da CPU."),(60, "são totalmente independentes, não podendo se comunicar entre si.");
UPDATE questoes SET correta = 244 WHERE id = 60;
-- 244 letra d
INSERT INTO questoes (descricao, nivel) VALUES ("Sobre a característica da computação em nuvem conhecida como elasticidade rápida, assinale a alternativa correta.", "61");
INSERT INTO opcoes (questao, descricao) VALUES (61, "É mutuamente exclusiva com a característica conhecida como serviço mensurável, devendo o usuário optar por uma ou outra."),(61, "Só está presente em nuvens privadas, não sendo encontrada em nuvens públicas."),(61, "Recursos alocados para uma tarefa específica podem ser liberados após sua conclusão, ajustando-se os recursos alocados conforme a demanda."),(61, "É sinônimo de SaaS (Software as a Service).");
UPDATE questoes SET correta = 247 WHERE id = 61;
-- 248 letra c
INSERT INTO questoes (descricao, nivel) VALUES ("A partição Linux nativo é conhecida por diretório raiz do Linux e é representada por:", "62");
INSERT INTO opcoes (questao, descricao) VALUES (62, "C:"),(62, "dir"),(62, "/."),(62, "/");
UPDATE questoes SET correta = 127 WHERE id = 62;
-- 252 letra d
INSERT INTO questoes (descricao, nivel) VALUES ("O Linux usa uma nomenclatura própria para identificar discos e partições, na seguinte nomenclatura “/dev/sda1” o que representa o número 1?", "63");
INSERT INTO opcoes (questao, descricao) VALUES (63, "A quantidade de discos."),(63, "O número da partição no disco."),(63, "O diretório do Linux."),(63, "Quantas vezes foi regravado no disco.");
UPDATE questoes SET correta = 254 WHERE id = 63;
-- 256 letra B
INSERT INTO questoes (descricao, nivel) VALUES ("Sabe-se que um computador é dividido em Hardware e Software. Das alternativas a seguir, qual NÃO é um Hardware?", "64");
INSERT INTO opcoes (questao, descricao) VALUES (64, "Drive de cd."),(64, "Placa de vídeo."),(64, "Driver de impressora."),(64, "Mouse.");
UPDATE questoes SET correta = 259 WHERE id = 64;
-- 260 letra C
INSERT INTO questoes (descricao, nivel) VALUES ("O conjunto de estratégias preventivas aliadas a planos de ação que busca garantir a manutenção dos serviços essenciais de uma empresa ou entidade durante uma eventual crise (interrupções ou incidentes) é conhecido como:", "65");
INSERT INTO opcoes (questao, descricao) VALUES (65, "análise de riscos."),(65, "backup."),(65, "plano de contingência de negócios."),(65, "política de segurança da informação.");
UPDATE questoes SET correta = 261 WHERE id = 65;
-- 264 letra a 
INSERT INTO questoes (descricao, nivel) VALUES ("Computação em grid é uma plataforma de software em Zope de computação de grande capacidade de processamento inspirada no MapReduce.", "66");
INSERT INTO opcoes (questao, descricao) VALUES (66, "Levando em consideração o uso de n-cores em CPUs, sim é correta a afirmativa"),(66, "Errado"),(66, "Certo"),(66, "Nenhuma das alternativas");
UPDATE questoes SET correta = 267 WHERE id = 66;
-- 268 letra C
-- Marcos Antonio
INSERT INTO questoes (descricao, nivel) VALUES ("MySQL refere-se a:", "67");
INSERT INTO opcoes (questao, descricao) VALUES (67, "tipo de linguagem"),(67, "tipo de invasão cibernético"),(67, "tipo de banco de dados"),(67, "sistema de engrenagem");
UPDATE questoes SET resposta_correta = 271 WHERE id = 67;
-- 272 letra C
INSERT INTO questoes (descricao, nivel) VALUES ("Sistema binário, compreende:", "68");
INSERT INTO opcoes (questao, descricao) VALUES (68, "1-0"),(68, "1-1"),(68, "0-1"),(68, "0-2");
UPDATE questoes SET resposta_correta = 275 WHERE id = 68;
-- 276 letra C
INSERT INTO questoes (descricao, nivel) VALUES ("É o principal componente de um computador:", "69");
INSERT INTO opcoes (questao, descricao) VALUES (69, "memória"),(69, "processador"),(69, "monitor"),(69, "usuário");
UPDATE questoes SET resposta_correta = 278 WHERE id = 69;
-- 280 LETRA B
INSERT INTO questoes (descricao, nivel) VALUES ("O que são Dados?", "70");
INSERT INTO opcoes (questao, descricao) VALUES (70, "partes de programas"),(70, "resquícios de arquivos corrompidos"),(70, "informações desencontradas"),(70, "informações desencontradas");
UPDATE questoes SET resposta_correta = 281 WHERE id = 70;
-- 284 LETRA A
INSERT INTO questoes (descricao, nivel) VALUES ("Na falta de qual destes componentes, você não consegue utilizar um computador?", "71");
INSERT INTO opcoes (questao, descricao) VALUES (71, "teclado"),(71, "placa-mãe"),(71, "mouse"),(71, "cabo de força");
UPDATE questoes SET resposta_correta = 286 WHERE id = 71;
-- 288 letra B
INSERT INTO questoes (descricao, nivel) VALUES ("Unidade lógica:", "72");
INSERT INTO opcoes (questao, descricao) VALUES (72, "disco velho"),(72, "disco vazio"),(72, "disco rígido"),(72, "nda");
UPDATE questoes SET resposta_correta = 291 WHERE id = 72;
-- 292 LETRA C
INSERT INTO questoes (descricao, nivel) VALUES ("HD, ou simplesmente:", "73");
INSERT INTO opcoes (questao, descricao) VALUES (73, "Winchester"),(73, "Hardcore"),(73, "Disco Fabulous"),(73, "Hard Disk");
UPDATE questoes SET resposta_correta = 296 WHERE id = 73;
-- 296 lETRA C
INSERT INTO questoes (descricao, nivel) VALUES ("Quantos progamas o Microsoft Office 365 tem?", "74");
INSERT INTO opcoes (questao, descricao) VALUES (74, "9 programas"),(74, "7 programas"),(74, "36 programas"),(74, "10 programas");
UPDATE questoes SET resposta_correta = 297 WHERE id = 74;
-- 300 letra A
INSERT INTO questoes (descricao, nivel) VALUES ("Quais são os Dispositivos de entrada do computador?", "75");
INSERT INTO opcoes (questao, descricao) VALUES (75, "Mouse e fone"),(75, "Mouse e Teclado"),(75, "Blu-ray"),(75, "Impressora e papel");
UPDATE questoes SET resposta_correta = 302 WHERE id = 75;
-- 304 letra B
INSERT INTO questoes (descricao, nivel) VALUES ("Qual dessas peças é responsável pelo armazenamento de dados da máquina?", "76");
INSERT INTO opcoes (questao, descricao) VALUES (76, "Hard Disk (HD)"),(76, "Placa-Mãe (MB)"),(76, "Processador (CPU)"),(76, "O gabinete");
UPDATE questoes SET resposta_correta = 305 WHERE id = 76;
-- 308 LETRA A
INSERT INTO questoes (descricao, nivel) VALUES ("Qual desses Sistemas Operacionais é pertencente á Microsoft?", "77");
INSERT INTO opcoes (questao, descricao) VALUES (77, "Windows"),(77, "Mac"),(77, "Linux"),(77, "Android");
UPDATE questoes SET resposta_correta = 309 WHERE id = 77;
-- 312 LETRA A
INSERT INTO questoes (descricao, nivel) VALUES ("Quando desligamos o computador, este tipo de memória perde todos os dados:", "78");
INSERT INTO opcoes (questao, descricao) VALUES (78, "DRAM"),(78, "SDRAM"),(78, "PROM"),(78, "RAM");
UPDATE questoes SET resposta_correta = 316 WHERE id = 78;
-- 316 LETRA D
INSERT INTO questoes (descricao, nivel) VALUES ("No LINUX o comando MKDIR:", "79");
INSERT INTO opcoes (questao, descricao) VALUES (79, "Lista arquivos"),(79, "Cria diretórios"),(79, "Cria arquivos vazios"),(79, "Criar usuário root");
UPDATE questoes SET resposta_correta = 318 WHERE id = 79;
-- 320 letra b
INSERT INTO questoes (descricao, nivel) VALUES ("Não é um Sistema Operacional Linux:", "80");
INSERT INTO opcoes (questao, descricao) VALUES (80, "Fedora"),(80, "Centos"),(80, "MAC OS"),(80, "Red Hat");
UPDATE questoes SET resposta_correta = 323 WHERE id = 80;
-- 324 letra c
INSERT INTO questoes (descricao, nivel) VALUES ("O arquivo de configuração do Squid fica localizado:", "81");
INSERT INTO opcoes (questao, descricao) VALUES (81, "/lib/squid/"),(81, "/var/squid/"),(81, "/home/squid"),(81, "/etc/squid");
UPDATE questoes SET resposta_correta = 328 WHERE id = 81;
-- 328 letra D
INSERT INTO questoes (descricao, nivel) VALUES ("Qual versão do HTML é mais utilizado atualmente?", "82");
INSERT INTO opcoes (questao, descricao) VALUES (82, "XHTML"),(82, "XHTML 2.0"),(82, "HTML 4"),(82, "HTML 5");
UPDATE questoes SET resposta_correta = 332 WHERE id = 82;
-- 332 letra D
INSERT INTO questoes (descricao, nivel) VALUES ("No HTML a tag usada para negritar uma palavra?", "83");
INSERT INTO opcoes (questao, descricao) VALUES (83, "<negrito>"),(83, "<bold>"),(83, "<b>"),(83, "<bng>");
UPDATE questoes SET resposta_correta = 335 WHERE id = 83;
-- 336 letra C
INSERT INTO questoes (descricao, nivel) VALUES ("Programa utilizado para criação de Slides de apresentação é:", "84");
INSERT INTO opcoes (questao, descricao) VALUES (84, "Excel"),(84, "Power Point"),(84, "Windows"),(84, "Access");
UPDATE questoes SET resposta_correta = 338 WHERE id = 84;
-- 340 LETRA B
INSERT INTO questoes (descricao, nivel) VALUES ("São opções do Painel de Controle, exceto:", "85");
INSERT INTO opcoes (questao, descricao) VALUES (85, "Vídeo"),(85, "Adicionar ou remover Hardware"),(85, "Adicionar ou remover Programas"),(85, "Mouse");
UPDATE questoes SET resposta_correta = 341 WHERE id = 85;
-- 344 Letra A
INSERT INTO questoes (descricao, nivel) VALUES ("Qual extensão abaixo geralmente designa um arquivo de imagem?", "86");
INSERT INTO opcoes (questao, descricao) VALUES (86, "MP2"),(86, "MP4"),(86, "JPEG"),(86, "3G2");
UPDATE questoes SET resposta_correta = 347 WHERE id = 86;
-- 348 LETRA C
INSERT INTO questoes (descricao, nivel) VALUES ("O navegador exclusivo da Microsoft é o:", "87");
INSERT INTO opcoes (questao, descricao) VALUES (87, "Firefox"),(87, "Internet Explorer"),(87, "Safari"),(87, "Chrome");
UPDATE questoes SET resposta_correta = 350 WHERE id = 87;
-- 352
INSERT INTO questoes (descricao, nivel) VALUES ("O que significa a sigla PC?", "88");
INSERT INTO opcoes (questao, descricao) VALUES (88, "PROCESSAMENTO COMPUTADORIZADO"),(88, "PLACA COMPACTA"),(88, "COMPUTADOR PESSOAL"),(88, "PROJETO CONJUNTO");
UPDATE questoes SET resposta_correta = 355 WHERE id = 88;
-- 356 LETRA C
INSERT INTO questoes (descricao, nivel) VALUES ("Qual nome do formato de número R$ dentro do Microsoft Excel?", "89");
INSERT INTO opcoes (questao, descricao) VALUES (89, "Contábil"),(89, "Moeda"),(89, "Texto"),(89, "Porcentagem");
UPDATE questoes SET resposta_correta = 357 WHERE id = 89;
-- 360 LETRA A
INSERT INTO questoes (descricao, nivel) VALUES ("Qual a rede social que tem como ícone um fantasma?", "90");
INSERT INTO opcoes (questao, descricao) VALUES (90, "Facebook"),(90, "Google"),(90, "Tinder"),(90, "Snapchat");
UPDATE questoes SET resposta_correta = 364 WHERE id = 90;
-- 364 LETRA D
INSERT INTO questoes (descricao, nivel) VALUES ("Qual foi a primeira rede social da história da internet?", "91");
INSERT INTO opcoes (questao, descricao) VALUES (91, "Classmate"),(91, "MySpace"),(91, "Orkut"),(91, "FaceAPP");
UPDATE questoes SET resposta_correta = 365 WHERE id = 91;
-- 368 letra A
INSERT INTO questoes (descricao, nivel) VALUES ("Quando foi criado o primeiro smartphone da história?", "92");
INSERT INTO opcoes (questao, descricao) VALUES (92, "1998"),(92, "2000"),(92, "1994"),(92, "2017");
UPDATE questoes SET resposta_correta = 371 WHERE id = 92;
-- 372 LETRA C
INSERT INTO questoes (descricao, nivel) VALUES ("Qual a resolução de uma imagem Full HD?", "93");
INSERT INTO opcoes (questao, descricao) VALUES (93, "2560 x 1440"),(93, "1920 x 1080"),(93, "1280 x 720"),(93, "256 x 144");
UPDATE questoes SET resposta_correta = 374 WHERE id = 93;
-- 376 LETRA B
INSERT INTO questoes (descricao, nivel) VALUES ("Quantos Mb tem 1 GB?", "94");
INSERT INTO opcoes (questao, descricao) VALUES (94, "1000MB"),(94, "1204MB"),(94, "1080MB"),(94, "1024MB");
UPDATE questoes SET resposta_correta = 380 WHERE id = 94;
-- 380 LETRA D
INSERT INTO questoes (descricao, nivel) VALUES ("Qual a atual geração de processadores?", "95");
INSERT INTO opcoes (questao, descricao) VALUES (95, "8º e 9º"),(95, "2º e 3º"),(95, "10º e 11º"),(95, "15º");
UPDATE questoes SET resposta_correta = 381 WHERE id = 95;
-- 384 letra A
INSERT INTO questoes (descricao, nivel) VALUES ("Qual a função da memória?", "96");
INSERT INTO opcoes (questao, descricao) VALUES (96, "Processar dados"),(96, "Exibir dados"),(96, "Armazenar dados"),(96, "Armazenar");
UPDATE questoes SET resposta_correta = 387 WHERE id = 96;
-- 388 LETRA C
INSERT INTO questoes (descricao, nivel) VALUES ("Qual atalho de teclado significa RECORTAR?", "97");
INSERT INTO opcoes (questao, descricao) VALUES (97, "CTRL + O"),(97, "CTRL + X"),(97, "CTRL + B"),(97, "CTRL + A");
UPDATE questoes SET resposta_correta = 390 WHERE id = 97;
-- 392 LETRA B
INSERT INTO questoes (descricao, nivel) VALUES ("Dentre as alternativas a seguir, qual não faz parte de um item de hardware?", "98");
INSERT INTO opcoes (questao, descricao) VALUES (98, "Mouse"),(98, "Caixa de Som"),(98, "Windows"),(98, "Placa mãe");
UPDATE questoes SET resposta_correta = 395 WHERE id = 98;
-- 396 LETRA C
INSERT INTO questoes (descricao, nivel) VALUES ("O que é Windows da Microsoft?", "99");
INSERT INTO opcoes (questao, descricao) VALUES (99, "Sistema operacional"),(99, "Driver"),(99, "Navegador de internet"),(99, "Pacote office");
UPDATE questoes SET resposta_correta = 397 WHERE id = 99;
-- 400 LETRA A
INSERT INTO questoes (descricao, nivel) VALUES ("Software pré-gravado pelo fabricante da placa-mãe, colocado na memória ROM", "100");
INSERT INTO opcoes (questao, descricao) VALUES (100, "placa-mãe"),(100, "firmware"),(100, "BIOS"),(100, "CMOS");
UPDATE questoes SET resposta_correta = 402 WHERE id = 100;
-- 404 LETRA B
