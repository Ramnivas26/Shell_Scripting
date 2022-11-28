#### Until loops#########
#It executes if the condition is false
#

#!/bin/bash

n=1
until [ $n -ge 10 ]
do 
	echo $n
	((n++))
done
