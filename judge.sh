#!/bin/bash

python3 main.py < input.txt > tmp.txt

status=$?

if [ $status -ne 0 ]; then
    echo "RE"
elif diff -q tmp.txt output.txt > /dev/null; then
    echo "AC"
else
    echo "WA"
fi

rm -f tmp.txt

