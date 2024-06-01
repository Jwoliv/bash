#!/bin/bash

INDEX=1
COUNT_PRINTED_ITEMS=0
COUNT=$((RANDOM))

while [[ $INDEX -lt $COUNT ]]; do
  if [[ $((INDEX % 100)) -eq 0 ]]; then
    echo value: $INDEX
    ((COUNT_PRINTED_ITEMS++))
  fi
  ((INDEX++))
done
echo ---------------------------
echo Count: $COUNT_PRINTED_ITEMS
echo ---------------------------
