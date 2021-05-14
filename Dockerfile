from ubuntu:focal


RUN echo "pertama-tama, update & upgrade dulu"
RUN apt update 
RUN apt upgrade

RUN echo "install apache"
RUN DEBIAN_FRONTEND=noninteractive apt install -y apache2 
RUN service apache2 start

RUN echo "install software-properties-common biar bisa install aplikasi dari sofware repo yg luas"
RUN apt install -y software-properties-common

RUN echo "tambah repo php"
RUN add-apt-repository -y ppa:ondrej/php
RUN apt update 
RUN apt -y upgrade
RUN apt -y install php
RUN apt -y install nano
RUN apt -y install composer