# Postgres Docker

https://hub.docker.com/_/postgres

## Development Environment

### Start

```
docker compose -f docker-compose.dev.yml up
```

### Stop

```
docker compose -f docker-compose.dev.yml down --remove-orphans
```

### Initialize

All scripts in `docker-entrypoint-initdb.d/` are run only when there is no data. Stop the container, delete `db_dev` and restart the container to run the init scripts again.

### Adminer

Log into Adminer at http://localhost:8000/ and select the following:

- System: PostgreSQL
- Server: dev.postgres
- Username: postgres
- Password: example
