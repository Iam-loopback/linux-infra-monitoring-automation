#!/bin/bash

#headline
echo ""
echo "======SYSTEM HEALTH REPORT======"

#date
echo ""
date

#Hostname
echo ""
echo "Hostname:"
echo ""
hostname

#Uptime
echo ""
echo "Uptime:"
echo ""
uptime

#Memory Usage
echo ""
echo "Memory Usage:"
echo ""
free -m

#Disk Usage
echo ""
echo "Disk Usage:"
echo ""
df -h

#Top Processes
echo ""
echo "Top Processes:"
echo""
ps -eo  pid,ppid,%mem,%cpu,cmd --sort=-%cpu | head


