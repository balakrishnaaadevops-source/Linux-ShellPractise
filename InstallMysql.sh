#!bin/bash

# what all are pre-requisite to install mysql
# first check the user has executed with root or sudo permissions
# if yes then list out of the mysql alreday installed or not
# if not then install mysql 
USER=$(id -u)
if [ $USER -ne 0 ]; then
 echo "Run Script $0 with $USER "
 exit 1
fi
