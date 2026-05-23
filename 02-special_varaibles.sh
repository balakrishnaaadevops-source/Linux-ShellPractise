#!bin/bash
echo "All varaibles passed to script: $@"
echo "Number of variables passed to script: $#"
echo "First variable : $1"
echo "Script name: $0"
echo "PID of the current script $$"
sleep 3 &
echo "PID of the background command $!"
echo "line number $LINENO"
echo "script executed $SECONDS seconds"
echo "Random number $RANDOM"