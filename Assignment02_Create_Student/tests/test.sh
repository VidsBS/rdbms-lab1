#!/bin/bash

set -e

MYSQL="mysql -h127.0.0.1 -P3306 -uroot -proot"

$MYSQL < solution.sql

$MYSQL -e "
USE CollegeDB;
DESCRIBE Student;
" > output.txt

grep -q StudentID output.txt
grep -q StudentName output.txt
grep -q DOB output.txt
grep -q Gender output.txt
grep -q DepartmentID output.txt

echo "✓ Assignment 2 Passed"
