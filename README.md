# Docker

Create image
```sh
docker build -d <image-name> <directory-path-with-dockerfile>
```

Run container with image
```sh
docker run -d -p <machine-port>:<container-port> --env-file <env-file> --name <container-name>
```

> Make sure that the variables in .env file are NOT enclosed with quotes

## Using docker-compose

Use docker compose command to create image and container in a single command
```
# In the directory where docker-compose.yml file exists
docker compose up -d
```