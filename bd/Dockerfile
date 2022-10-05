FROM mysql
ENV MYSQL_ROOT_PASSWORD=123BANCO

COPY  ./criacao_do_banco.sql /docker-entrypoint-initdb.d/01_criacao.sql

COPY ./questoes.sql /docker-entrypoint-initdb.d/02_questoes.sql
