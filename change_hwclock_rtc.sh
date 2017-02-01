#!/bin/bash
# Update rtc0 Time 
# By tianyu 2016/12/12

echo "Change /dev/rtc0 Time"
echo "Update Now Time:"
ntpdate-debian
echo "Now Time is :"
date
echo "Update Time to Board rtc0 "
hwclock -r -f /dev/rtc0
hwclock -w -f /dev/rtc0
hwclock -s -f /dev/rtc0
