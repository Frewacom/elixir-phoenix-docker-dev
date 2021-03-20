# Demo - Elixir and Phoenix

## Setup
To make setup easier, the entire application is running inside a docker
container. The docker container automatically configures the required database
and installs any dependencies required by phoenix.

First of all, make sure that you have installed and is running docker.
Depending on your installation, you might need to add `sudo` before each
docker commmand.

Make sure that docker is running:
```
$ sudo systemctl start docker
```

Build the docker container:
```
$ docker-compose build
```

Create the PostgreSQL database:
```
$ docker-compose run web mix ecto.create
```

Start the container:
```
$ docker-compose up
```

Navigate to `localhost:4000`.
