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
```sh
# In the directory where docker-compose.yml file exists
docker compose up -d
```

## Installation on server

Steps: `https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository`

Authenticate

```sh
sudo docker login ghcr.io
# Then put username and password
```


## Access

- Goto `Package Settings`
- Under `Manage Access`, make sure the repository accessing the packages is added with `Write` role
- Goto `Repository Settings`
- Goto `Actions` -> `General`
- Under `Workflow permissions`, make sure `Read and Write Permissions` is selected
