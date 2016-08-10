#!/usr/bin/env docker build -t docker-wordpress-xdebug-debug .
FROM kaihofstetter/docker-wordpress-xdebug:latest

MAINTAINER Tobias <tobias@youcruit.com>

RUN sed 's/^display_errors.*=.*/display_errors = On/g' -i /etc/*/apache2/php.ini
RUN find / -name "wp-config.php" -print0 | xargs -0 sed "s/define('WP_DEBUG', false);/define('WP_DEBUG', true);/g" -i 

RUN echo -e '#!/bin/bash\necho ARGS: "$*";echo; echo; cat' >/usr/sbin/sendmail

RUN chmod a+rx /usr/sbin/sendmail
