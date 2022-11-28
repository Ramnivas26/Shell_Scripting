#!/bin/bash

echo -e "Enter the name of the file: \c"
read file_name

if [ -f $file_name ]   # we can give -e or -f (-e checks only for file exists or not but -f checks file exists or not and also it is file or directory)
then
    if [ -w $file_name ]
    then   
       echo "Type some text ---> To quit press CTRL + d"
       cat >> $file_name
    else
       echo "$file_name don't have written permission"
    fi   
else
    echo "$file_name doesn't exist"
fi
