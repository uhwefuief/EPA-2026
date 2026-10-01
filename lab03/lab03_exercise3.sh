#!/bin/bash

# log file
LOG="process_log.txt"

# check if a parameter was passed
log() {
        echo "$(date '+%Y-%m-%d %H:%M:%S') - $*" >> "$LOG"
}

# check that a mode was passed
if [ -z "$1" ]; then
        echo "Usage: $0 <mode> <number>" >&2
        echo "  mode: screen or log" >&2
        exit 1
fi

mode="$1"
limit="$2"

# validate the mode
if [ "$mode" != "screen" ] && [ "$mode" != "log" ]; then
        echo "Error: mode must be 'screen' or 'log'" >&2
        exit 1
fi

# check that a number was passed
if [ -z "$limit" ]; then
        echo "You didn't pass a number to $0" >&2
        echo "Usage: $0 <mode> <number>" >&2
        exit 1
fi

# check that the number is a valid non-negative integer
if ! [[ "$limit" =~ ^[0-9]+$ ]]; then
        echo "Error: $limit is not a valid number" >&2
        exit 1
fi

# count running processes
ct=$(ps -ef | tail -n +2 | wc -l)

# choose output method
if [ "$mode" = "screen" ]; then
        # output to screen
        echo "There are $ct processes running on this machine"
        if [ "$ct" -gt "$limit" ]; then
                echo "Maximum number of processes exceeded"
        else
                echo "The maximum number of processes NOT exceeded"
        fi
else
        # output to log file
        log "There are $ct processes running on this machine"
        if [ "$ct" -gt "$limit" ]; then
                log "Maximum number of processes exceeded"
        else
                log "The maximum number of processes NOT exceeded"
        fi
fi
