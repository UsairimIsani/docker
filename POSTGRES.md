# Postgres Docker container for Development

```bash
docker run  --name pgu2 -e POSTGRES_PASSWORD=postgres -d -p 5433:5432 -v $HOME/docker/volumes/postgres2:/var/lib/postgresql/data  postgres
```
