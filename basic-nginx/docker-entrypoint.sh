#!/usr/bin/env sh

envsubst < /etc/nginx/conf.d/default.conf.tmpl > /etc/nginx/conf.d/default.conf

"$@"
