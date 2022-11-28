#!/bin/bash

#for((i=0; i<5; i++))
#do 
#   echo $i
#done


#for command in ls pwd date
#do
#	echo "-------------$command---------------"
#	$command
#done

echo -e "Enter the required command: \c"
read command
for i in $command
do
	echo "==========$i================"
	$i
done
