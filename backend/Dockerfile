FROM ubuntu:latest

#Atualiza a máquina
RUN apt-get update && \
	apt-get upgrade && \
	apt-get install wget -y

#Instala o JDK
WORKDIR /opt
# RUN wget https://download.oracle.com/java/19/latest/jdk-19_linux-x64_bin.tar.gz
# RUN tar -xzf jdk-19_linux-x64_bin.tar.gz
# WORKDIR /opt/jdk-19_linux-x64_bin/bin
# RUN update-alternatives --install /usr/bin/java java `pwd`/java 0
# RUN update-alternatives --install /usr/bin/javac javac `pwd`/javac 0
RUN apt-get update && \
    apt-get install --yes software-properties-common

RUN add-apt-repository ppa:webupd8team/java && \
    echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
    echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

#Instala o Maven
WORKDIR /opt
RUN wget https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz
RUN tar -xzf apache-maven-3.8.6-bin.tar.gz
WORKDIR /opt/apache-maven-3.8.6/bin
RUN update-alternatives --install /usr/bin/mvn mvn `pwd`/mvn 0

#Instala o showdoespigão na máquina
RUN mkdir projetos
COPY showdoespigao-master ~/projetos
WORKDIR /projetos/showdoespigao-master

#Inicia o projeto
RUN ./mvn spring-boot:run

