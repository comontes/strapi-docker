#!/bin/sh

echo "current directory is: $PWD"

if [ ! -f "$PWD/package.json" ]; then 
  echo "creating base directory"
  cp -r /opt/strapi-app/* $PWD/
  echo 'installing packages'
fi

npm install
exec "$@"
