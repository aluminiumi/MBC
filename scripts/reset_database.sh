#!/bin/bash

echo "Deleting database..."
echo "DROP DATABASE mbc;" | mysql

echo "Creating database..."
./convert_csv_to_sql.py > mbc_data.sql
mysql < create_mbc.sql

echo "Populating tables..."
mysql < month_data.sql
mysql < mbc_data.sql



