FROM ubuntu:latest
MAINTAINER "lokesh.dw@gmail.com"
RUN apt update -y
RUN apt install apache2 -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/medion.zip /var/www/html/
EXPOSE 80
WORKDIR /var/www/html
RUN apt install unzip -y
RUN unzip medion.zip 
RUN cp -rvf medion/* .
RUN rm -rvf medion.zip
RUN rm -rvf medion
ENTRYPOINT service apache2 restart && bash
