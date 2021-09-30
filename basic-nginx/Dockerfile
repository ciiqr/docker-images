FROM nginx:1.17-alpine

COPY default.conf.tmpl /etc/nginx/conf.d/
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
