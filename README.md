# Nginx + php-fpm 5.6

* Docker image with Nginx and php-fpm

* php 5.6.29
* php5.6-fpm
* nginx


* based on phusion/baseimage:0.9.19



# Build Docker image

```
docker build -t my-php-nginx github.com/maxivak/docker-image-php-nginx.git
```


* or clone it and build locally

```
git clone https://github.com/maxivak/docker-image-php-nginx.git
cd docker-image-php-nginx
docker build -t my-php-nginx .

docker tag my-php-nginx my-php-nginx:5.6
```



# Settings
Several environmental variables are available to adjust settings

## DOCROOT

You can use `DOCROOT` to configure the document root used by nginx.

For example: `DOCROOT=/var/www/html`

## TZ

You can use `TZ` to configure the timezone. The php.ini timezone will also be adjusted based on `TZ``

For example: `TZ=America/New_York`

