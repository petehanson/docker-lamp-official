FROM php:fpm 
EXPOSE 9000
RUN apt-get update \
	&& apt-get install -y -q --no-install-recommends \
		ssmtp \
	&& apt-get clean \
	&& rm -r /var/lib/apt/lists/*
RUN docker-php-ext-install pdo pdo_mysql \
    && pecl install redis-3.1.0 \
    && docker-php-ext-enable redis
RUN { \
    echo 'session.save_handler = redis'; \
    echo 'session.save_path = tcp://redis:6379'; \
} >> /usr/local/etc/php/conf.d/docker-php-ext-redis.ini
COPY php.ini /usr/local/etc/php/php.ini
COPY ssmtp.conf /etc/ssmtp/ssmtp.conf
