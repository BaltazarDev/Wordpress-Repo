FROM wordpress:php8.4-apache

# Install dependencies for Imagick
RUN apt-get update && apt-get install -y \
    libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && rm -rf /var/lib/apt/lists/*

# Copy custom php.ini configuration
COPY uploads.ini /usr/local/etc/php/conf.d/uploads.ini
