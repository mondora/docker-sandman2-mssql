#!/bin/sh
# Register DSN
odbcinst -i -s -l -r <<EOF
[DefaultDataSource]
Driver      = ${MSSQL_ODBC_DRIVER-ODBC Driver 17 for SQL Server}
Server      = $MSSQL_HOSTNAME,${MSSQL_PORT-1433}
Database    = $MSSQL_DATABASE_NAME
EOF

# Start sandman2
sandman2ctl -p $PORT --schema=${SCHEMA-dbo} mssql+pyodbc://$MSSQL_USERNAME:$MSSQL_PASSWORD@DefaultDataSource
