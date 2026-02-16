#!/bin/bash

LOG_FILE="logs/health.log"

# Colors
GREEN="\e[32m"
RED="\e[31m"
YELLOW="\e[33m"
BLUE="\e[34m"
RESET="\e[0m"

echo -e "${BLUE}-------------------------------------${RESET}"
echo -e "${GREEN}       SYSTEM HEALTH REPORT${RESET}"
#!/bin/bash

PROJECT_DIR="/home/sreenidhi/linux-projects/linux-health-monitor"
LOG_FILE="$PROJECT_DIR/logs/health.log"

mkdir -p "$PROJECT_DIR/logs"

{
echo "==============================================="
echo "SYSTEM HEALTH REPORT"
echo "==============================================="
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo ""

echo "Uptime:"
uptime
echo ""

echo "Memory Usage:"
free -h
echo ""

echo "Disk Usage (Root Only):"
df -h /
echo ""

echo "Top 5 Processes by CPU:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
echo ""

# Disk Alert
DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$DISK_USAGE" -gt 80 ]; then
    echo "⚠ WARNING: Disk usage above 80%!"
fi

echo "Report Generated Successfully"
echo ""
} | tee -a "$LOG_FILE"
echo -e "${BLUE}-------------------------------------${RESET}"

echo -e "${YELLOW}Date:${RESET} $(date)"
echo -e "${YELLOW}Hostname:${RESET} $(hostname)"
echo ""

echo -e "${GREEN}Uptime:${RESET}"
uptime
echo ""

echo -e "${GREEN}Memory Usage:${RESET}"
free -h
echo ""

echo -e "${GREEN}Disk Usage (Root Only):${RESET}"
df -h / | awk 'NR==1 || NR==2'
echo ""

echo -e "${GREEN}Top 5 Processes by CPU:${RESET}"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
echo ""

echo "Report Generated at $(date)" >> $LOG_FILE
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

