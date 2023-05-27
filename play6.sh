#!/usr/bin/env bash

#PING DOMAINS
for x in google.com bing.com; do
    if ping -q -c 2 -W 1 $x > /dev/null; then  #Options: make it quiet, ping 2 times, wait for 1 second, ping output to not be there
        echo "$x is up"
    else
        echo "$x is down"
    fi
done

#WEATHER APP
for x in $(cat cities.txt); do
    weather=$(curl -s http://wttr.in/$x?format=3)
    echo "The weather for $weather"
done

#ARE YOU UP?
echo "What do you want to check?"
read target

while true; do
    if ping -q -c 2 -W 1 $target > /dev/null; then
        echo "Hey you are up"
        break
    else
        echo "$target is currently down"
    fi
sleep 2
done

