
#!/bin/bash

# Pass Arguments to a Bash-script

echo $0 $1 $2 $3 '> echo $1 $2 $3'

# $0 --> gives the output of file name by default

args=("$@") # Storing in a variable

# echo ${args[0]} ${args[1]} ${args[2]}

echo $@  #  @ symbol print all the variables

echo $#   # # symbol gives count of varaibles

