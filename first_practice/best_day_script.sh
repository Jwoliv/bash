#!/bin/bash

NAME=$1
COMPLIMENT=$2

USER=$(whoami)
WHERE_AM_I=$(pwd)
DATE=$(date)
echo "whoami: $USER"
echo "current directory: $WHERE_AM_I"
echo "current date: $DATE"

echo "Good morning $NAME!!"
sleep 1
echo "You're looking good today $NAME!!"
sleep 1
echo "You have the best $COMPLIMENT I've ever seen $NAME!!"
