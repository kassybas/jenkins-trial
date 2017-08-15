FROM php

MAINTAINER MrBrown <mrb@freemail.hu>
LABEL maintainers="MrBrown <mrb@freemail.hu>"

RUN apt-get update && apt-get install -y git zip

RUN curl -k https://getcomposer.org/composer.phar > /usr/bin/composer && \
    chmod +x /usr/bin/composer
