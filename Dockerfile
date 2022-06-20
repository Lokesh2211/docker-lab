FROM ubuntu:latest
MAINTAINER "lokesh.dw@gmail.com"
RUN apt update -y
RUN apt install apache2 -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/medion.zip /var/www/html/
EXPOSE 80
WORKDIR /var/www/html
RUN apt install unzip -y
RUN unzip brandon.zip 
RUN cp -rvf brandon/* .
RUN rm -rvf brandon.zip
RUN rm -rvf brandon
ENTRYPOINT service apache2 restart && bash
