# Fullstack PERN app with git submodules

Clone the project and its submodules:

```
git clone --recurse-submodules https://github.com/Anthony-Phillip-Collins/fullstack-docker-pern.git
```

These are the submodules:

- [backend](https://github.com/Anthony-Phillip-Collins/fullstack-docker-pern-backend/)
- [frontend](https://github.com/Anthony-Phillip-Collins/fullstack-docker-pern-frontend/)
- [types](https://github.com/Anthony-Phillip-Collins/fullstack-docker-pern-types/)

## Local development

[Install docker](https://docs.docker.com/get-docker/) if you haven't already.

Build the images:

```
docker compose -f docker-compose.dev.yml build
```

Run the containers:

```
docker compose -f docker-compose.dev.yml up
```

Stop/remove the containers:

```
docker compose -f docker-compose.dev.yml down --remove-orphans
```

Or you could use the equvalent util npm scripts in package.json e.g. `npm run docker:dev:build` etc.

Once up and running visit http://localhost:8080/

### Login credentials

#### Admin

u: admin@foobar.com  
p: letmein

#### User

u: user@foobar.com  
p: letmein

### Connect to Adminer

Once up and running visit http://localhost:8000/ and enter the following credentials.

- System: PostgreSQL
- Server: dev.postgres
- Username: postgres
- Password: example
- Database: postgres

## Deploy to Heroku

1. Follow the instructions in _./backend/README.md_
2. Follow the instructions in _./frontend/README.md_
