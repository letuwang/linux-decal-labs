#!usr/bin/bash

if ping $1 -c 1 &> /dev/null;
then
    echo "Ok"
else
    echo "Host is not reachable"
fi