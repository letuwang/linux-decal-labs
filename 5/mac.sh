#!usr/bin/bash

# Processes the output of ip command and displays the MAC address of the network interface eth0 of your VM.
# First figure out how to use ip command to get an output which contains the information we want
# Then use head and tail command and pipes to tailor ip’s output to one line
# Use cut command to get the MAC address. Since we know that the MAC address has fixed length, feel free to count the indices.
# The final shell script only has to have one line, although a answer with multiple lines are also acceptable.
ip addr show eth0 | grep link/ether | cut -d ' ' -f