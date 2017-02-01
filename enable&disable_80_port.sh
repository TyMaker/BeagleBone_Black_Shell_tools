#!/bin/bash
# vi /lib/systemd/system/bonescript.socket
# [Socket]
# ListenStream=80     **8080**
#
# [Install]
# WantedBy=sockets.target
# 
# Enable Disable 80 port Server
# By Tianyu 2016/12/12

echo "enable & disable 80 Port server"

syst="systemctl"

case "$1" in
    enable)
        echo "enable 8080 server"
        ${syst} enable bonescript.service
        ${syst} enable bonescript-autorun.service
        ${syst} enable bonescript.socket
        ${syst} enable bonescript-autorun.service
        echo "Done!"
        ;;
    disable)
        echo "Disable 8080 server"
        ${syst} disable bonescript.service
        ${syst} disable bonescript-autorun.service
        ${syst} disable bonescript.socket
        ${syst} disable bonescript-autorun.service
        ;;
    *)
        echo "User: ./enable_webserver.sh {enable|disable}"
        exit 1
        ;;
esac

exit 0
