#!/bin/bash

echo "Input name:"
read NAME
echo "Input age:"
read AGE
sleep 1
echo "Hello, $NAME, you are $AGE years old!"
echo $(($AGE + $RANDOM / 2000))
