#!/bin/bash

# Case statement
#

echo -e "Please enter your vechile selection: \c"


read vechile

case $vechile in 
	"car")
		echo "The rent of the $vechile is 100 dollar per hour";;
        "van")
		echo "The rent of the $vechile is 200 dollar per hour";;
	"bus")
		echo "The rent of the $vechile is 300 dollar per hour";;
	"auto")
		echo "The rent of the $vechile is 50 dollar per hour";;
	*)
		echo " You have entered wrong input ";;
esac	
	
