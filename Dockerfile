# Composer Docker Container
FROM composer
MAINTAINER James Gilliland <neclimdul@gmail.com>

# Install pecl but don't enable it so composer can be quick and scripts can
# enable it as needed.

# Install some common testing extensions
RUN BUILD_DEPS="autoconf g++ make" && \
  apk -U add binutils $BUILD_DEPS && \
  docker-php-ext-install pdo_mysql && \
  pecl install redis && \
  pecl install xdebug && \
  apk del $BUILD_DEPS && \
  rm -rf /tmp/pear

ENTRYPOINT []
