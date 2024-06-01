#!/bin/bash

X=1

while [[ $X -le 100 ]]
do
  if [[ $(($X % 3)) -eq 0 ]]; then
    echo "$X"
  fi
  read -p "press enter"
  ((X++))
done

echo $(pwd)