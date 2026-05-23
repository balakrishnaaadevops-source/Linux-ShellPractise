#!bin/bash
ls /tmp
if [$? -eq 0 ]; then
echo "SUCCESS"
exit 1
fi
echo "FAILURE"


