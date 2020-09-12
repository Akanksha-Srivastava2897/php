#installing ubuntu
FROM ubuntu
MAINTAINER Akanksha Srivastava

#installing php

RUN apt-get update \
&& apt-get install -y php7.4 \
&& apt-get clean \
&& rm -rf var/lib/apt/list*

ENV php_conf /etc/php/7.4/php.ini
WORKDIR /var/www/html
CMD ["echo" "php7.4 installed"]

