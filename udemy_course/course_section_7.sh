#!/bin/bash

case "$1" in
  0|zero)
    echo "invalid inputed parameter"
    ;;
  1|one)
    echo "first time"
    ;;
  *)
    echo "again"
    ;;
esac