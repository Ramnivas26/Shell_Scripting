#!/bin/bash

echo -e "Enter the age: \c"

read age

if [ $age -eq 18 ]
then
   echo "$age is equal to 18"
elif [ $age -gt 10 ] 
then
  echo "$age is greater than 18"
else
  echo "$age is very less small boy"
fi
