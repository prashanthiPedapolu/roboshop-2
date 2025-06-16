#!/bin/bash

# Script to monitor CPU and Memory usage

while true; do
    echo "----------------------------------------"
    echo "System Resource Usage - $(date)"
    
    # CPU Usage
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
    echo "CPU Usage: $CPU_USAGE %"

    # Memory Usage
    MEM_TOTAL=$(free -m | awk '/^Mem:/ {print $2}')
    MEM_USED=$(free -m | awk '/^Mem:/ {print $3}')
    MEM_USAGE_PERCENT=$(awk "BEGIN {printf \"%.2f\", ($MEM_USED/$MEM_TOTAL)*100}")
    echo "Memory Usage: $MEM_USED MB / $MEM_TOTAL MB (${MEM_USAGE_PERCENT}%)"

    # Wait for 5 seconds before repeating
    sleep 5
done
