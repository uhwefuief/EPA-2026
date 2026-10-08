#!/bin/bash

# Count CPU
num_cpu=$(nproc)

echo "Available CPU cores: $num_cpu"
# Read the required number of cores from the first argument
required_cpu=$1

# Report error if need it
if [ "$num_cpu" -lt "$required_cpu" ]; then
    echo "ERROR: Need $required_cpu CPU cores, but only $num_cpu are available."
    exit 1
else
    echo "OK: $num_cpu CPU cores are available; $required_cpu required."
fi
