#!/bin/bash
set -e

echo "creating databases..."
psql --version

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE ROLE "$GEONETWORK_USER" LOGIN PASSWORD '$GEONETWORK_PASSWORD';
    CREATE DATABASE $GEONETWORK_DB;

    \c '$GEONETWORK_DB';
    GRANT USAGE ON SCHEMA "public" TO "$GEONETWORK_USER";
    GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA "public" TO "$GEONETWORK_USER";
    GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA "public" TO "$GEONETWORK_USER";
    ALTER DEFAULT PRIVILEGES IN SCHEMA "public" GRANT USAGE, SELECT ON SEQUENCES TO "$GEONETWORK_USER";
    CREATE EXTENSION IF NOT EXISTS postgis SCHEMA public;
EOSQL
