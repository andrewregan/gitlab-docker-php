FROM webdevops/php-nginx:debian-8-php7
COPY setup.sh
COPY start.sh
RUN apt-get update; apt-get upgrade -y;
RUN sh setup.sh
CMD sh start.sh
