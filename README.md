# docker-sandman2-mssql

Docker image for running [sandman2](https://github.com/jeffknupp/sandman2) to
get a REST interface over a Microsoft Sql Server database.

## Quickstart

* run the image:
  ```sh
  docker run -d \
      -e MSSQL_HOSTNAME=example.database.windows.net \
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

The following environment variables are used to configure the server:

- `MSSQL_HOSTNAME`
- `MSSQL_PORT` (optional, defaults to `1443`)
- `MSSQL_DATABASE_NAME`
- `MSSQL_USERNAME`
- `MSSQL_PASSWORD`
- `MSSQL_ODBC_DRIVER` (optional, defaults to `ODBC Driver 13 for SQL Server`)
