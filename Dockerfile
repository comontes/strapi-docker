FROM node:11.1.0-alpine

WORKDIR /api

RUN echo "unsafe-perm = true" >> ~/.npmrc

RUN npm install -g strapi@3.0.0-alpha.16

COPY strapi-app /opt/strapi-app
COPY docker-entrypoint.sh /opt/docker-entrypoint.sh
RUN chmod +x /opt/docker-entrypoint.sh

EXPOSE 1337

COPY healthcheck.js ./
HEALTHCHECK --interval=15s --timeout=5s --start-period=30s \
      CMD node /usr/src/api/healthcheck.js

ENTRYPOINT ["/opt/docker-entrypoint.sh"]
COMMAND ["strapi", "start"]