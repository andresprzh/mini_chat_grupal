#!/bin/bash
set -e
DB_NAME=${1:-chat_db}
DB_USER=${2:-django_chat}
DB_USER_PASS=${3:-chatpas}
sudo su postgres <<EOF
createdb  $DB_NAME;
psql -c "CREATE USER $DB_USER WITH PASSWORD '$DB_USER_PASS';"
psql -c "grant all privileges on database $DB_NAME to $DB_USER;"
echo "Postgres User '$DB_USER' and database '$DB_NAME' created."
EOF