# basic-nginx

utility image for spinning up an nginx instance with server configuration provided via env var

ie. useful as a simply reverse proxy in `docker-compose.yml` files
```yaml
version: '3.6'
services:
  proxy:
    image: ghcr.io/ciiqr/basic-nginx:latest
    environment:
      SERVER_CONFIG: |
        location / {
          proxy_pass http://web;
        }

        location /api {
          proxy_pass http://server;
        }
    ports:
      - '80:80'
  web:
    image: web
  server:
    image: server
```
