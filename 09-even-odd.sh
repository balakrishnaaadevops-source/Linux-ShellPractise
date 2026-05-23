#!bin/bash
NUM=$1
if [ ($NUM/2) -eq 0 ]; then
 echo "EVEN number $NUM"
else
  echo "ODD Number : $NUM"
fi