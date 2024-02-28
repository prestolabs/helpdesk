#!/usr/bin/env bash

# unload the mDNSResponder service 
sudo launchctl unload /System/Library/LaunchDaemons/com.apple.mDNSResponder.plist

# disable bonjour
sudo defaults write /Library/Preferences/com.apple.mDNSResponder.plist NoMulticastAdvertisements -bool true


# reload the mDNSResponder service
sudo launchctl load /System/Library/LaunchDaemons/com.apple.mDNSResponder.plist
