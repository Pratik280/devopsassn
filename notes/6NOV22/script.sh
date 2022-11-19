#!/bin/sh
num=7
numtwo=$(($num + 100)) # arithmatic
echo $numtwo # use $varname for using variable in code

if [ $num = 7 ]
then
  echo "TRUE"
else
  echo "FALSE"
fi
