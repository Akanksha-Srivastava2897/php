#installing ubuntu
FROM ubuntu
MAINTAINER Akanksha Srivastava

#installing php

RUN apt-get update \
&& apt-get install -y tzdata \
&& apt-get install -y php7.4 \
&& apt-get clean \
&& rm -rf var/lib/apt/list*

#Environment Variable

ENV php_conf /etc/php/7.4/php.ini

#Working directory

WORKDIR /var/www/html
CMD ["echo" "php7.4 installed"]

