#!bin/bash
# Print who is running the script
# Print the current directory
# Print the home directory
# Print the PID of the script
# Run sleep 10 in the background and print its PID
# Print a random number between 1–100
# At the end, print how many seconds the script took to run

echo "Who is running : $(whoami)"
echo "Cuurent directory : $(pwd)"
echo "Home directory : $HOME"
echo "current script PID : $$"
sleep 15 &
echo "backgroup of PID : $!"
echo "Randam number $RANDOM"
echo "seconds of the script took : $SECONDS"