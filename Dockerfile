FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /

RUN apt-get update && apt-get install -y apache2 libapache2-mod-php php-mysql

RUN rm /var/www/html/index.html

COPY wordpress /var/www/html

COPY hyperdb/db-config.php /var/www/html/db-config.php

COPY hyperdb/db.php /var/www/html/wp-content/

COPY hyperdb/wp-config.php /var/www/html/wp-config.php

COPY memcached/object-cache.php /var/www/html/wp-content/

ENV DBHOST=mysql-master-service

ENV SLAVEHOST=mysql-slave-service

ENV DBUSER=wpuser

ENV DBPASSWORD=password

ENV DBNAME=wpdb

ENV MEMCACHEDHOST=memcached-service 

COPY entrypoint.sh /entrypoint.sh

RUN chmod 755 /entrypoint.sh

CMD /entrypoint.sh
