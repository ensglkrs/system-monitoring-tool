#!/bin/bash

# Tarih-zaman bilgisi
timestamp=$(date "+%Y-%m-%d %H:%M:%S")

# CPU ve RAM bilgileri
cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
mem=$(free -m | awk '/Mem:/ { printf("%.2f", $3/$2 * 100.0) }')

# Script dizinine göre log klasörüne yaz
log_dir="$(dirname "$0")/../logs"
mkdir -p "$log_dir"
echo "$timestamp - CPU: $cpu% - RAM: $mem%" >> "$log_dir/system_usage.log"
