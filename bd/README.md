# Rodando o container

  * Entrar no PowerShell(PS)/Console(bash);
  * Coferir se tem o docker instalado pelo comando `docker --version`;
  * Entrar na pasta onde foi baixado o Dockerfile(no PS `chdir C:\Users\caminhoParaAPasta`, no bash `cd ~/CaminhoParaOArquivo` );
  * Executar o comando de Construção(download) da imagem com o comando  `docker build -t mysql-showDoEspigao -f ./Dockerfile .` (__-t  determina um nome pra imagem__)  (__-f se refere ao caminho do arquivo__);
  * Executar o comando de Execução(criar o container baseado na imagem) da imagem `docker run -d --rm --name  BDShowdoEspigao mysql-showDoEspigao` (__-d é a flag que não deixa o terminal inutilizado enquanto roda o container__),\ (__--rm se o container existir, ele derruba o existente e sobe o novo__),\ (__--name define o nome da imagem__), o terminal vai te retornar uma ID da instância do container;
  * Agora é só conectar no container com o comando `docker exec -it  /bin/bash`