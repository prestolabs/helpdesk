#!/usr/bin/env bash

# verify bonjour
/usr/bin/sudo /usr/bin/defaults read /Library/Preferences/com.apple.mDNSResponder | /usr/bin/grep NoMulticastAdvertisements
