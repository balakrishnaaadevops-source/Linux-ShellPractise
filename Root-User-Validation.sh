#!/bin/bash
USER=$(id -u)
if [ $USER -eq 0 ]; then
echo "$USER is root user"
exit 0
else
echo "$USER is not root user"
exit 1
fi