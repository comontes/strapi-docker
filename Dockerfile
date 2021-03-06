FROM node:11.1.0-alpine

LABEL maintainer="Bilal Ahmed Janjua <bilal@janjua.me>"
LABEL provider="Tri Rahmat Gunadi <him@jujiyangasli.com>"

WORKDIR /api

RUN echo "unsafe-perm = true" >> ~/.npmrc

RUN npm install -g comontes/strapi@3.0.0-alpha.24.1

COPY strapi-app /opt/strapi-app
COPY docker-entrypoint.sh /opt/docker-entrypoint.sh
RUN chmod +x /opt/docker-entrypoint.sh

EXPOSE 1337

#COPY healthcheck.js /opt/healthcheck.js
#HEALTHCHECK --interval=15s --timeout=5s --start-period=90s CMD node /opt/healthcheck.js

ENTRYPOINT ["/opt/docker-entrypoint.sh"]
CMD ["strapi", "start"]
