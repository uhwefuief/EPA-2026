#!/bin/bash

# log file
LOG="process_log.txt"

# write message in log 
log() {
        echo "$(date '+%Y-%m-%d %H:%M:%S') - $*" >> "$LOG"
}

# check if a parameter was passed
if [ -z "$1" ]; then
        echo "You didn't pass any parameters to $0" >&2
        echo "Usage: $0 <number>" >&2
        exit 1
fi

# check is a valid non-negative integer
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
        echo "Error: $1 is not a valid number" >&2
        exit 1
fi

# count running processes
ct=$(ps -ef | tail -n +2 | wc -l)

# log process count with timestamp
log "There are $ct processes running on this machine"

# compare process count to the number passed in
if [ "$ct" -gt "$1" ]; then
        log "Maximum number of processes exceeded"
else
        log "The maximum number of processes NOT exceeded"
fi
