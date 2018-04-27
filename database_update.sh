#!/bin/bash

###Create Database With Shell Script

echo "Create database"

# To create tables
psql -d dris_demo -U postgres -f /tmp/sql_scripts/create_table.sql
