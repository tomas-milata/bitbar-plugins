#!/bin/bash
/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk ' 
BEGIN	{ ssid="-"}
/ SSID: .+$/ { ssid=substr($0, index($0, $2)) } 
END	{ print ssid }
'

