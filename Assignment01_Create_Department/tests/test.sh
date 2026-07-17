#!/bin/bash

set -e

mysql -h127.0.0.1 -P3306 -uroot -proot < solution.sql

mysql -h127.0.0.1 -P3306 -uroot -proot -e "
USE CollegeDB;
SHOW TABLES;
" > output.txt

grep -q "Department" output.txt

echo "PASS"
