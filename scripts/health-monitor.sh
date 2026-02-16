#!/bin/bash

echo "-------------------------------------"
echo "       SYSTEM HEALTH REPORT"
echo "-------------------------------------"

echo "Date: $(date)"
echo "Hostname: $(hostname)"
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
echo "Top 5 Processes by CPU:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
echo ""

