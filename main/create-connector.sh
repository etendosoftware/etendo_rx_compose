#!/bin/sh

>&2 echo "Creating debezium connector ..."

# Debezium endpoint
HOST="localhost"
PORT="8083"

CONNECTORNAME="etendo"
DBUSER="postgres"
DBNAME="etendo"
DBHOSTNAME="postgres"
DBPASSWORD="syspass"
DBSERVERNAME="default"

DATA='
{
    "name": "'${CONNECTORNAME}'",
      "config": {
        "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
        "database.user": "'${DBUSER}'",
        "database.dbname": "'${DBNAME}'",
        "database.hostname": "'${DBHOSTNAME}'",
        "database.password": "'${DBPASSWORD}'",
        "database.server.name": "'${DBSERVERNAME}'",
        "schema.include.list": "public",
        "name": "'${CONNECTORNAME}'"
      }
}'

DEBEZIUM_URL="http://${HOST}:${PORT}"

curl --location --request POST "${DEBEZIUM_URL}/connectors/" --header 'Content-Type: application/json'  --data "${DATA}"
