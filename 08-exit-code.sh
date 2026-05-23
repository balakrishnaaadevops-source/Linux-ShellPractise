#!bin/bash
ls /tmp
if [ $? -eq 0 ]; then
 echo "SUCCESS"
else
 echo "FAILURE"
fi
ls /fakedir
if [ $? -eq 0 ]; then
echo "SUCCESS"
else
echo "FAILURE"
fi
ping -c1 google.com
if [ $? -eq 0 ]; then
echo "SUCCESS"'
else
echo "FAILURE"
fi

