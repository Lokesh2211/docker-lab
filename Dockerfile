FROM ubuntu:latest
MAINTAINER "lokesh.dw@gmail.com"
RUN apt update -y
RUN apt install apache2 -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page277/dryme.zip /var/www/html/
EXPOSE 80
WORKDIR /var/www/html
RUN apt install unzip -y
RUN unzip dryme.zip
RUN cp -rvf laundry-service-website-template/* .
RUN rm -rvf dryme.zip
RUN rm -rvf laundry-service-website-template
ENTRYPOINT service apache2 restart && bash

