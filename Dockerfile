FROM ubuntu
MAINTAINER "RADHAKRISHNA"
RUN apt update
RUN apt install apache2 -y
RUN echo "ServerName 44.223.10.203" >> /etc/apache2/apache2.conf
COPY ./index.html /var/www/html
CMD ["apachectl","-D","FOREGROUND"]
EXPOSE 80
