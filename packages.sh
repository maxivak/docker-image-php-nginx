#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
echo force-unsafe-io > /etc/dpkg/dpkg.cfg.d/02apt-speedup

add-apt-repository ppa:ondrej/php

apt-get update

#apt-get --no-install-recommends -y install nginx php5-fpm php5-mysql php5-imagick php5-mcrypt php5-curl php5-cli php5-memcache php5-intl php5-gd php5-xdebug curl
apt-get --no-install-recommends --allow-unauthenticated -y install nginx
apt-get --no-install-recommends --allow-unauthenticated -y install php5.6 php5.6-mysql php5.6-mbstring php5.6-curl php5.6-gd php5.6-mcrypt php5.6-xml php5.6-xmlrpc php5.6-fpm

# Cleanup
apt-get clean
rm -f /etc/dpkg/dpkg.cfg.d/02apt-speedup
find /tmp /var/tmp -mindepth 2 -delete
