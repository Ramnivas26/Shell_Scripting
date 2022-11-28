#!/bin/bash


echo -e "Please enter the variable : \c"
read value

case $value in
	[a-z])
		echo "You have entered $value is from a to z";;
	[A-Z])
		echo "You have entered $value is from A to Z";;
	[0-9])
		echo "You have entered $value is from 0 to 9";;
	?)
		echo "You have entered $value is from special character";;
	*)
		echo "You have entered $value is WRONG INPUT";;
esac
