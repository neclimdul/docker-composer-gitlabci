# Composer Docker Container
FROM composer
MAINTAINER James Gilliland <neclimdul@gmail.com>

# Install pecl but don't enable it so composer can be quick and scripts can
# enable it as needed.

# Install some common testing extensions
RUN BUILD_DEPS="autoconf g++ make libmcrypt-dev" && \
  apk -U add binutils libmcrypt $BUILD_DEPS && \
  docker-php-ext-install pdo_mysql && \
  docker-php-ext-install mcrypt && \
  pecl install redis && \
  pecl install xdebug && \
  apk del $BUILD_DEPS && \
  rm -rf /tmp/pear

ENTRYPOINT []
