

# Run docker-compose
## Including Postgres DB
docker-compose -p rx -f main/docker-compose.yaml up -d
## Including Postgres DB
docker-compose -p rx -f main/docker-compose.yaml -f misc/postgresql/docker-compose.yaml up -d