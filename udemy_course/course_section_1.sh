#!/bin/bash

URL=google2.com
ping -c 2 $URL && echo "SUCCESS"
RETURN_STATUS=$?

if [[ "$RETURN_STATUS" -eq "0" ]]; then
  echo "SUCCESS [IF]"
elif [[ "$RETURN_STATUS" -eq "2" ]]; then
  echo "$URL isn't valid"
  exit 2
fi