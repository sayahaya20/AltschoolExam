#!/bin/bash

# Install Postgres 13 Ubuntu 22.04
sudo apt update -y
sudo apt install postgresql postgresql-contrib -y

# Create Postgres Database and User
sudo -u postgres psql -c "CREATE DATABASE mydatabase;"
sudo -u postgres psql -c "CREATE USER sayahaya WITH PASSWORD 'myp@55word';"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE mydatabase TO sayahaya;"


# Restart PostgreSQL
systemctl restart postgresql
