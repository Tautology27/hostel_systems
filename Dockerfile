FROM php:8.2-apache

# Required to install PHP extensions
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    && docker-php-ext-install mysqli \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy PHP files
COPY ./*.php /var/www/html/

# Copy CSS and image folders
COPY css/ /var/www/html/css/
COPY images/ /var/www/html/images/

# Set ownership (optional on Windows, but safe)
RUN chown -R www-data:www-data /var/www/html
