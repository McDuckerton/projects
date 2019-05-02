#!/bin/bash

echo -e "\e[31;43m***** HOSTNAME INFO *****\e[0m"
hostname
echo ""

echo -e "\e[31;43m***** File System && Disk Space Usage *****\e[0m"
df -h
echo ""

echo -e "\e[31;43m***** Free && Used Mem *****\e[0m"
free
echo ""

echo -e "\e[31;43m***** System Uptime && Load *****\e[0m"
uptime
echo ""

echo -e "\e[31;43m***** Currently Logged-In Users *****\e[0m"
who
echo ""

echo -e "\e[31;43m***** Top 5 Memory-Consuming Processes *****\e[0m"
ps -eo %mem,%cpu,comm --sort=-%mem | head -n 6
echo ""
echo -e "\e[1;32mDone.\e[0m"
