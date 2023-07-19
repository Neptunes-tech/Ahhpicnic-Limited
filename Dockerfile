FROM php:7.4-fpm

# Install dependencies
RUN apt-get update && apt-get install -y \
    libonig-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    zip \
    unzip \
    curl

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Install composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www

COPY . /var/www

# Install all PHP dependencies.
RUN composer install

# Generate a key for Laravel. Sometimes it is necessary to wait a few seconds before this step, so we will sleep for 3 seconds.
RUN sleep 3 && php artisan key:generate

# Run migrations.
RUN php artisan migrate

CMD php artisan serve --host=0.0.0.0 --port=8000

EXPOSE 8000