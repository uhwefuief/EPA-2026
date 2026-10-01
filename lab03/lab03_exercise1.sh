#!/bin/bash

# this is a comment

# check if a parameter was passed
if [ -z "$1" ]; then
        echo "You didn't pass any parameters to $0"
        echo "Usage: $0 <number>"
        exit 1
fi

# check that the parameter is a valid non-negative integer
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
        echo "Error: $1 is not a valid number"
        exit 1
fi

# count running processes
# tail -n +2 skips the header line that ps -ef prints
ct=$(ps -ef | tail -n +2 | wc -l)
echo "There are $ct processes running on this machine"

# compare process count to the number passed in
if [ "$ct" -gt "$1" ]; then
        echo "Maximum number of processes exceeded"
else
        echo "The maximum number of processes NOT exceeded"
fi
