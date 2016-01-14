# Composer Docker Container
FROM composer/composer:master
MAINTAINER James Gilliland <neclimdul@gmail.com>

# Install pecl but don't enable it so composer can be quick and scripts can
# enable it as needed.
#
# Run docker-php-ext-enable xdebug to enable xdebug
RUN pecl install xdebug-beta

ENTRYPOINT []

