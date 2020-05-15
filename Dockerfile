FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && apt-get install apache2 -y
RUN echo "This is Dinesh server" > /var/www/html/index.html
EXPOSE 80
CMD ["usr/sbin/apache2ctl", "-DFOREGROUND"]

