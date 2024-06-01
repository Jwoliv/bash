#!/bin/bash

echo "select your type:
1 - class1
2 - class2
3 - class3
"
read CLASS_NUMBER
case $CLASS_NUMBER in
  1) CLASS=class1
     ATTACK=20
     HP=40;;
  2) CLASS=class2
     ATTACK=40
     HP=20;;
  3) CLASS=class3
     ATTACK=10
     HP=50;;
esac

echo "character
- class [$CLASS]
- hp: [$HP]
- attack : [$ATTACK]
"

ENEMY_POWER_SCORE=$(($RANDOM % 5))

echo "write you power score"
read USER_POWER_SCORE
RESULT=""

if [[ $USER_POWER_SCORE -gt $ENEMY_POWER_SCORE ]] && [[ $USER -eq "whoami" ]]; then
  RESULT="you won"
elif [[ $USER_POWER_SCORE -eq $ENEMY_POWER_SCORE ]]; then
  RESULT="draw"
else
  RESULT="you died"
fi

echo "calculation..."
sleep 1
echo "$RESULT [your: $USER_POWER_SCORE] | [enemy: $ENEMY_POWER_SCORE] user: $USER"