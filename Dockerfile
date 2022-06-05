FROM ubuntu:latest
MAINTAINER "lokesh.dw@gmail.com"
RUN apt update -y
RUN apt install apache2 -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/icream.zip /var/www/html/
EXPOSE 80
WORKDIR /var/www/html
RUN apt install unzip -y
RUN unzip icream.zip
RUN cp -rvf ice-cream-shop-website-template/* .
RUN rm -rvf icream.zip
RUN rm -rvf ice-cream-shop-website-template

