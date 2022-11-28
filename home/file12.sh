# arrays
#

#!/bin/bash

os=('ubuntu' 'mac' 'windows')

echo "${os[@]}"  # @ --> prints all contents in an array

echo "${os[1]}"

echo "${!os[@]}"  # ! with @ --> prints index only

echo "${#os[@]}" # # with @ --> prints length of the array

os[3]='Fedora'   # appending the array

os[4]='Suse'

echo "${os[@]}"  # before deleting

unset os[2]


echo "${os[@]}"  # After deleting

