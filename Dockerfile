FROM wordpress:php8.4-apache

# Download the install-php-extensions script and install imagick
ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN install-php-extensions imagick

# Copy custom php.ini configuration
COPY uploads.ini /usr/local/etc/php/conf.d/uploads.ini
