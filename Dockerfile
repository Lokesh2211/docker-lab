FROM ubuntu:latest
MAINTAINER "lokesh.dw@gmail.com"
RUN apt update -y
RUN apt install apache2 -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/savory.zip /var/www/html/
EXPOSE 80
WORKDIR /var/www/html
RUN apt install unzip -y
RUN unzip savory.zip 
RUN cp -rvf savory/* .
RUN rm -rvf savory.zip
RUN rm -rvf savory
ENTRYPOINT service apache2 restart && bash
