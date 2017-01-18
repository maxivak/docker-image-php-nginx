FROM phusion/baseimage:0.9.19
MAINTAINER Max Ivak <maxivak@gmail.com>

ENV HOME /root
ENV DOCROOT /var/www/html

# Build packages first
COPY ./packages.sh /build/packages.sh
RUN /build/packages.sh

COPY ./nginx /build/nginx
RUN /build/nginx/setup.sh

COPY ./php-fpm /build/php-fpm
RUN /build/php-fpm/setup.sh

RUN rm -rf /build

# debug

RUN echo "<?php phpinfo(); ?>" > /var/www/html/1.php
RUN echo "222" > /var/www/html/2.php
RUN echo "222" > /var/www/html/2.html

#
EXPOSE 80 443
