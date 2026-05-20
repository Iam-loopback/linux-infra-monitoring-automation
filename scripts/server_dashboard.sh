#!/bin/bash

clear


echo "====================================="
echo " LINUX SERVER DASHBOARD "
echo "====================================="

echo ""
echo "Hostname:"
hostname

echo ""
echo "Current Time:"
date

echo ""
echo "Uptime:"
uptime

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h

echo ""
echo  "Top CPU Processes:"
ps -eo pid,ppid,cmd,%cpu,%mem --sort=-%cpu | head

echo ""
echo "Active Network Ports:"
ss -tulnp
