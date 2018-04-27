#!/bin/bash

echo "Deleting database..."
echo "DROP DATABASE mbc;" | mysql

echo "Creating database..."
./convert_csv_to_sql.py > ../datasets/mbc_data.sql
mysql < ../datasets/create_mbc.sql

echo "Populating tables..."
mysql < ../datasets/month_data.sql
mysql < ../datasets/mbc_data.sql



