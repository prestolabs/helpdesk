#!/bin/bash

curl -s https://raw.githubusercontent.com/prestolabs/helpdesk/main/mac/awdl_wifi_scripts/disable_awdl.sh > ~/disable_awdl.sh
sudo chmod u+x ~/disable_awdl.sh
cd /Library/LaunchDaemons/ && sudo curl -sO https://raw.githubusercontent.com/prestolabs/helpdesk/main/mac/awdl_wifi_scripts/com.meter.wifi.awdl.plist
sudo sed -i -- "s/YOUR_USERNAME/${USER}/g" /Library/LaunchDaemons/com.meter.wifi.awdl.plist
sudo launchctl unload -w /Library/LaunchDaemons/com.meter.wifi.awdl.plist 2> /dev/null
sudo launchctl load -w /Library/LaunchDaemons/com.meter.wifi.awdl.plist
