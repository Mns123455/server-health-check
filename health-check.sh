#!/bin/bash

echo "=================================="
echo "LINUX SERVER HEALTH CHECK         "
echo "=================================="

echo ""

echo "1.current user"
whoami

echo ""

echo "2. Hostname"
hostname

echo ""

echo "3.current date and time"
date

echo ""

echo "4.Disk usage"
df -h /
echo ""
echo "5.Memory usage"
free -h

echo "6. CPU Load"
uptime

echo ""

echo "7. Running Processes"
ps aux | head

echo ""

echo "8. Docker Status"

if command -v docker >/dev/null 2>&1
then
    echo "Docker is installed"
    docker --version
else
    echo "Docker is not installed"
fi

echo ""

echo "======================================"
echo "       HEALTH CHECK COMPLETED         "
echo "======================================"
