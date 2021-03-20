# Demo - Elixir and Phoenix
Runs a Phoenix application and PostgreSQL database inside a docker container for easy development setup.

## Setup
> Depending on your installation, you might need to add `sudo` before each docker commmand.

1. Install docker
    * [Docker](https://docs.docker.com/get-started/)
    * [Docker compose](https://docs.docker.com/compose/)
2. Make sure that docker is running (run the appropriate command for your system):
    ```
    $ systemctl start docker
    ```
3. Build the docker container:
    ```
    $ docker-compose build
    ```
4. Create the PostgreSQL database:
    ```
    $ docker-compose run web mix ecto.create
    ```
5. Start the container:
    ```
    $ docker-compose up
    ```
6. Navigate to:
    ```
    localhost:4000
    ```
