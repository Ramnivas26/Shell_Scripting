#!/bin/bash

# AND operator
# OR operator

echo -e "Please enter your age: \c"
read age

if [[ "$age" -ge 18 && "$age" -le 60 ]]
then
   echo "This $age person is eligible to work"
elif [[ "$age" -lt 18 || "$age" -gt 60 ]]
then
    echo "This $age person is not eligible to work"
fi

