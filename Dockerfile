FROM webdevops/php-nginx:debian-8-php7
COPY setup.sh /root/setup.sh
COPY start.sh /root/start.sh
RUN apt-get update; apt-get upgrade -y;
RUN sh /root/setup.sh
CMD sh /root/start.sh
