```bash
# For listing all containers on machine.
docker ps -a

# For listing all images on machine
docker images

# For listing all running containers.
docker ps

# For executing bash in a container. -it means interactive
docker exec -it <container_name> bash

# For attaching a volume to a container
docker run -v /path/to/local/vol:/path/to/docker/fs postgres

# For attaching a port to a container
# -p local:container
docker run -p 5433:5432 postgres

# For naming a container
docker run --name <container_name>

# For removing a container
docker rm <container_name>

#For removing a image
docker image rm <image_name>

# If force fully delete in case container are still using the image
docker image rm --force <image_name>

# To run a postgres server at port 5433. -d means in detach mode i.e terminal is freed. -e means setting env vars
docker run -p 5433:5432 --name pgu -e POSTGRES_PASSWORD=postgres -d -v /home/<user>/docker/volume/postgres-<project>:/var/lib/postgresql/data postgres

# To create a backup in formats .bak (binary) .sql .tar
# First get into bash
docker exec -it pgu2 bash
# After getting into the container
# Do as root, use -U postgres when anything has to do with postgres
pg_dump usa > /path/to/location/usa.sql -U postgres
pg_dump usa > /path/to/location/usa.bak -U postgres
pg_dump usa > /path/to/location/usa.tar -U postgres



```
