#!bin/bash
ls /tmp
if [$? -eq 0 ]; then
 echo "SUCCESS"
else
 echo "FAILURE"
fi


