#!/usr/bin/env bash

count=1
./failure.sh > output.txt 2>> output.txt
while [ $? -eq 0 ]
do
count=$((count + 1))
./failure.sh > output.txt 2>> output.txt
done
cat output.txt
echo "repeat $count times"