# Base Builder image
FROM composer:latest as builder

WORKDIR /app

COPY ./ /app

# Install composer dependencies
RUN composer install --ignore-platform-reqs --no-progress --no-ansi --no-dev

# Base Server Image
FROM php:8.3-apache

# Install PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN docker-php-ext-enable mysqli pdo pdo_mysql

# Configure apache
RUN a2enmod rewrite
COPY ./docker/apache/000-default.conf /etc/apache2/sites-enabled/000-default.conf

# Copy files with dependencies
COPY --from=builder ./app /var/www/html

# Grant permission to Apache user
WORKDIR /var/www/html
