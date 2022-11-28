### While loop with Gnome #########



#!/bin/bash

echo -e "Please the required number of terminals: \c"

read number

while [ $number -lt 3 ]
do
  echo "$number"
  ((number++))
  xterm-terminal &

done
