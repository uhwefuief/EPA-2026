#!/bin/bash
#
# Display instructions for running this script
usage() {
    echo "Usage: $0 MIN_NUM_CORES"
}

# Require exactly one command-line

if [ "$#" -eq 0 ]; then
    read -r -p "Enter the minimum number of CPU cores: " required_cpu
elif [ "$#" -eq 1 ]; then
    required_cpu=$1
else
    usage
    exit 1
fi

if [[ ! "$required_cpu" =~ ^[1-9][0-9]*$ ]]; then
    printf 'ERROR: Enter a positive whole number, such as 2 or 4.\n'
    exit 1
fi

# Count CPU
num_cpu=$(nproc)

printf 'Available CPU cores: %s\n' "$num_cpu"
# Read the required number of cores from the first argument

# Report error if need it
status=0
if [ "$num_cpu" -lt "$required_cpu" ]; then
    echo "ERROR: Need $required_cpu CPU cores, but only $num_cpu are available."
    status=1
else
    echo "OK: $num_cpu CPU cores are available; $required_cpu required."
fi

printf '\nread: Gets input from the user, allowing the script to ask for a CPU requirement when no argument is supplied.\n'
printf 'printf: Uses a format string and placeholders to produce consistent output.\n'

exit "$status"
