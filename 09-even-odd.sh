#!bin/bash
NUM=$1
NUM1=$($NUM/2)
if [ $NUM1 -eq 0 ]; then
 echo "EVEN number $NUM"
else
  echo "ODD Number : $NUM"
fi