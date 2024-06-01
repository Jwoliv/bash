#!/bin/bash

GLOBAL_VARIABLE=EXAMPLE_TEXT_FROM_GLOBAL_NAMESPACE

print_base_info() {
  print_current_date
  print_extra_param $1
  print_for_elements $@
  echo "[+] another information"
  echo "[+] global variable: $GLOBAL_VARIABLE"
}

print_extra_param() {
  if [[ -n $1 ]]; then
    echo "extra param exists $1"
  else
    echo "extra param is null $1"
  fi
}

print_for_elements() {
  index=0
  for ITEM in $@
  do
    if [[ $index > 0 ]]; then
      echo "[+] for: $ITEM"
    fi
    ((index++))
  done
}

print_current_date() {
  local CURRENT_DATE=$(date)
  echo "[+] current date is: $CURRENT_DATE"
}

print_base_info
print_base_info example_extra_param \
 for_param_1 \
 for_param_2 \
 for_param_3 \
 for_param_4

echo ------------------------------------------------

function_return_example() {
  echo $1
}

wrapper_function() {
  function_return_example example
  if [[ $? = '0' ]]; then
    echo "success execution"
  else
    echo "failed execution"
  fi
}
wrapper_function

echo $CURRENT_DATE