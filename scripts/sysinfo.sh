#!/usr/bin/env bash
# Первый скрипт: короткий отчёт о системе.
# Запуск в WSL/Linux:  bash scripts/sysinfo.sh
set -euo pipefail

echo "Host:    $(hostname)"
echo "User:    $(whoami)"
echo "Kernel:  $(uname -r)"
echo "Uptime:  $(uptime -p 2>/dev/null || uptime)"
echo
echo "Disk usage (/):"
df -h /
echo
echo "Memory:"
free -h
