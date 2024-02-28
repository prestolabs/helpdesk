#!/usr/bin/env bash

# unload the mDNSResponder service 
sudo launchctl unload /System/Library/LaunchDaemons/com.apple.mDNSResponder.plist

# disable bonjour
sudo defaults write /System/Library/LaunchDaemons/com.apple.mDNSResponder.plist ProgramArguments -array-add "-NoMulticastAdvertisements"

# reload the mDNSResponder service
sudo launchctl load /System/Library/LaunchDaemons/com.apple.mDNSResponder.plist
