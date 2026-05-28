#!bin/bash

# what all are pre-requisite to install mysql
# first check the user has executed with root or sudo permissions
# if yes then list out of the mysql alreday installed or not
# if not then install mysql 
if [ $? -e 0 ]
 echo "Installing MYSQL"
 exit 0
 else
 echo "Run script : $0 with root user"
fi
