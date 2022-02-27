#!/bin/bash

# Free Memory

free -h >> ~/backups/freemem/free_mem.txt

# Disk Usuage

df -h >> ~/backups/diskuse/disk_useage.txt

# Open Files

lsof >> ~/backups/openlist/open_list.txt

# System Disk Space

df -x squashfs >> ~/backups/freedisk/free_disk.txt

