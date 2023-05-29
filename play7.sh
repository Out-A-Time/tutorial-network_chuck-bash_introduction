#!/usr/bin/env bash

echo "Welcome to the Hollywood Tower Hotel"
sleep 1
echo "Going up"
sleep 1
#We skip the loop at 13, but not breaking out. Continue = skip
for x in {1..17};do
    if [[ $x == 13 ]];then
        continue
    fi
    echo "Floor $x"
    sleep 1
done