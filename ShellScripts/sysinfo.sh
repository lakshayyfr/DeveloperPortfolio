
#!/bin/bash
# Author: Lakshay Saini
# Purpose: Generate a system information report

echo "========================================"
echo "       SYSTEM INFORMATION REPORT"
echo "========================================"

echo "Name: Lakshay Saini"
echo "Roll Number: ${ROLL_NUMBER:-Not provided}"
echo "Date: $(date)"

echo ""
echo "----- CPU INFORMATION -----"

lscpu | grep -E '^Model name:|^Core\(s\) per socket:|^Socket\(s\):|^CPU\(s\):'

echo ""
echo "----- MEMORY INFORMATION -----"

free -h | awk '/^Mem:/ {
    print "Total Memory:", $2
    print "Used Memory:", $3
}'

echo ""
echo "----- TOP 3 CPU PROCESSES -----"

ps -eo pid,comm,%cpu | head -1
ps -eo pid,comm,%cpu --no-headers | sort -k3,3nr | head -3

echo ""
echo "========================================"
echo "Report generated successfully."
echo "========================================"
