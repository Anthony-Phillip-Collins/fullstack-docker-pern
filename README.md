# Fullstack PERN app with git submodules

Clone the project and its submodules:

```
git clone --recurse-submodules https://github.com/Anthony-Phillip-Collins/fullstack-docker-pern.git
```

## Run the poject locally

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
