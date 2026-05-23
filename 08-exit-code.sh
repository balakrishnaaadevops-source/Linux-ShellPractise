#!bin/bash
ls /tmp
if [$? -ne 0 ]; then
echo "SUCCESS"
exit 1
fi
echo "FAILURE"


