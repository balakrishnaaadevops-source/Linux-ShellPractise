#!bin/bash
num=$1
if [ $num -le 1 ]; then
echo "$num :is not a prime number"
exit

fi
for (( i=2; i<num; i++ ))
do
 if (( $( num%i ) == 0 ))
 then
 echo "$num is not a prime"
 exit
 fi
 done
 echo "$num is a prime number"
