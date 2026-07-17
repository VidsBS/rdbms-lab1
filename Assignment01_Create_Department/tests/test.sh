#!/bin/bash

set -ex

echo "Running solution.sql"

mysql -h127.0.0.1 -P3306 -uroot -proot < solution.sql

echo "Showing databases"

mysql -h127.0.0.1 -P3306 -uroot -proot -e "SHOW DATABASES;"

echo "Using CollegeDB"

mysql -h127.0.0.1 -P3306 -uroot -proot -e "
USE CollegeDB;
SHOW TABLES;
"

echo "PASS"
