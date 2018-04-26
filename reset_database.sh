#!/bin/bash

echo "Deleting database..."
echo "DROP DATABASE mbc;" | mysql
./convert_csv_to_sql.py > mbc_data.sql

echo "Creating database..."
mysql < create_mbc.sql

echo "Populating table..."
mysql < mbc_data.sql



