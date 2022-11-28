#### While Loop ########

#/bin/bash


echo -e "Please the intital value : \c"

read n

while [ $n -le 10 ]

do 
  echo "$n"
  ((n++))
  sleep 3
done  
