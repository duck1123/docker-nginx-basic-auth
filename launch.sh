#!/bin/sh

rm /etc/nginx/conf.d/default.conf || :
envsubst '$FORWARD_HOST $FORWARD_PORT' < auth.conf > /etc/nginx/conf.d/auth.conf
envsubst < auth.htpasswd > /etc/nginx/auth.htpasswd

nginx -g "daemon off;"
