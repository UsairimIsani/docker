# NEO4J Docker container for Development

```bash
docker run --name nju -p 7687:7687 -p 7474:7474 -d -v $HOME/docker/volumes/neo4j/data:/data -e NEO4J_AUTH=neo4j/jango neo4j

```
