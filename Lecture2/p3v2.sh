#!/usr/bin/env bash

touch {output,error}.log
rm {output,error}.log
count=1
./failure.sh >> output.log 2>> error.log
while [ $? -eq 0 ]
do
count=$((count + 1))
./failure.sh >> output.log 2>> error.log
done
echo "output log: "
cat output.log

echo "error log: "
cat error.log

echo "the failure.sh repeat $count times"