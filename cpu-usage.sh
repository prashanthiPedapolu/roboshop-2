#!/bin/bash

# Script to monitor CPU and Memory usage

while true; do
    echo "----------------------------------------"
    echo "System Resource Usage - $(date)"
    
    # CPU Usage
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    echo "CPU Usage: $CPU_USAGE%"