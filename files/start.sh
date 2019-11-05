#!/bin/sh
mkdir -p /data/logs/supervisor

SERVER_NAME=$(echo ${SERVER_NAME} | sed -e 's/[]\/$*.^[]/\\&/g')

sed -i -E -e "s/site\.dev/${SERVER_NAME}/" /nginx/nginx_config/sites.conf

chown -R nginx: /var/lib/nginx  /nginx/nginx_config/site

/usr/bin/supervisord -n -c /nginx/supervisord.conf
