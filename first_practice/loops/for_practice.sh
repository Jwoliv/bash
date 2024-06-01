#!/bin/bash

INDEX=0

for LS_ITEM in $(ls);
do
  echo "str [$INDEX]: [$LS_ITEM]"
  ((INDEX++))
done


for URL_ITEM in google.com instagram.com facebook.com youtube.com;
do
  ping -c 2 -W 1 $URL_ITEM >> file_example.txt
done

WEATHER=$(curl -s http://wttr.in/Los_angeles?format=3)
echo "weather in the dream city: $WEATHER"
