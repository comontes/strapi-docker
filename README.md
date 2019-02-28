# Strapi

Strapi, with grahql included.

## Usage
in docker-compose:
```
version: "3.7"

services:
  app:
    image: bilalajanjua/strapi-docker
    ports:
      - 1337:1337
    volumes:
      - ./app:/api
    environment:
      - DATABASE_HOST=db
      - DATABASE_PORT=27017
      - DATABASE_USERNAME=myusername
      - DATABASE_PASSWORD=mypassword
      - DATABASE_NAME=mydb
      - DATABASE_AUTHENTICATION_DATABASE=admin
  db:
    image: mongo
    volumes:
      - ./db:/data/db
    environment:
      - MONGO_INITDB_ROOT_USERNAME=myusername
      - MONGO_INITDB_ROOT_PASSWORD=mypassword
      - MONGO_INITDB_DATABASE=mydb
```

## Environments

### DATABASE_HOST
default: `127.0.0.1`

### DATABASE_PORT
default: `27017`

### DATABASE_NAME
default: `strapi`

### DATABASE_USERNAME
default: `''`

### DATABASE_PASSWORD
default: `''`

### DATABASE_SSL
default: `false`

### DATABASE_AUTHENTICATION_DATABASE
default: `''`

### PORT
default: `1337`

### CSRF_KEY
default: `_csrf`

### CSRF_SECRET
default: `_csrfSecret`

