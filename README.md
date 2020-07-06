# Learning Docker

### Docker is a very crucial part of our day to day development

```
docker run hello-world
```

> This pulls **hello-world** image and creates a container and runs it

```
docker ps
```

> tell which containers are running

```
docker ps -a
```

> tells all the container which are running and which ran

```
docker images
```

> Prints out all the available images locally

```
docker run -d hello-world
```

> Run the container in a detach state i.e the terminal is freed for further use

```bash
docker attach __hash
```

```bash
docer run -i kodeKloud/simple-prompt-docker
```

> -i flag means that the docker container is interactive and can receive stdinput

```
docker run -it kodeKloud/simple-prompt-docker
```

> -t means a psuedo terminal is attached to the container whose stdout is piped to the stdout of the main terminal

### Port Mapping

```
docker run -p 80:5000 kodekloud/simple-webapp
```

> -p tells docker to map this host port to container port

```
host_port:container_port
```

### Volume persisting

```
docker run -v /opt/somedir:/var/lib/mysql mysql
```

> -v says save all the file in var/lib/mysql to /opt/somedir

### Inspecting a container

```
docker inspect hash_or_container_name
```

### Logs

```
docker logs hash_or_container_name
```

### Environment Variables

```
docker run -e APP_COLOR=blue kodekloud/simple-webapp
```

```bash
docker build -t user_name/name_of_image:tag .
# . means current directory
```
