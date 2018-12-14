#!/bin/sh


if [ ! -d "$PWD/strapi-app" ]; then 
  mkdir $PWD/strapi-app
fi

if [ ! -f "$PWD/strapi-app/package.json" ]; then 
  cp -r /opt/strapi-app $WORKDIR/strapi-app
fi

npm install --prefix ./strapi-app
exec "$@"
