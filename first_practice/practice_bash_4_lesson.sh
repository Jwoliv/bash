#!/bin/bash

echo "health status: "
read HEALTH

if [[ $HEALTH -gt 100 || $HEALTH -lt 0 ]]; then
    echo "wtf [invalid $HEALTH value]"
elif [[ $HEALTH -eq 0 ]]; then 
    echo "you died [health: $HEALTH]"
elif [[ $HEALTH -lt 10 ]]; then 
    echo "you will die soon [health: $HEALTH]"
elif [[ $HEALTH -gt 10 ]]; then
    echo "not bad [health: $HEALTH]"
fi
