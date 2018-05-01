#!/bin/bash

###Create Database With Shell Script

echo "Create database"

# SQL script to create DRIS database 
psql -f /tmp/create_database.sql
echo "DRIS database created"

# SQL script to create schemas
psql -d dris_demo -f /tmp/create_schema.sql
echo "Schema created"

# SQL script to create tables - Without partitions
psql -d dris_demo -f /tmp/create_demographics.sql
echo "Demographics table created"

# SQL script to add data into the database
psql -d dris_demo -f /tmp/insert_data.sql
echo "Data inserted into database"

# SQL script to rename the existing database
psql -d dris_demo -f /tmp/rename_table.sql
echo "Table renamed"

# SQL script to create table with partitions
psql -d dris_demo - f /tmp/create_table_partition.sql
echo "Create table with partition"

# SQL script to insert data from old table to new table
psql -d dris_demo -f /tmp/data_transfer.sql
echo "Data transfered to partitioned table"

echo "END OF THE GAME HA HA HA!!!!"
