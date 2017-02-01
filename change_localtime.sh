#!/bin/bash

echo "Change localtime to Hong_Kong"

rm /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Hong_Kong /etc/localtime
ntpdate-debian
date
