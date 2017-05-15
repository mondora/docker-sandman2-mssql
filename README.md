# docker-sandman2-mssql

Docker image for running [sandman2](https://github.com/jeffknupp/sandman2) to
get a REST interface over a Microsoft Sql Server database.

## Quickstart

* run the image:
  ```sh
  docker run -d \
      -e MSSQL_HOST=example.database.windows.net:1433 \
      -e MSSQL_DATABASE_NAME=example \
      -e MSSQL_USERNAME=username \
      -e MSSQL_PASSWORD=password \
      -p 5000:80 \
      mondora/sandman2-mssql
  ```
* visit http://localhost:5000/admin

## Usage

### Exposed ports

The `sandman2` server listens on port 80 inside the container, which is
`EXPOSE`-d by the image.

### Configuration

The following environment variables must be specified when running the image:

- `MSSQL_HOST`: the host (`hostname:port`) of the database server to
  connect to
- `MSSQL_DATABASE_NAME`
- `MSSQL_USERNAME`
- `MSSQL_PASSWORD`
