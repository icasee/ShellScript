#!/bin/sh

hour=`date '+%H'`
pid=$(ps -fe | grep 'QQ' | grep -v grep | awk '{print $1}')

if [[ -n $pid ]]; then
	if [ $hour -ge 18 ]; then		
		/usr/bin/killall QQ
	fi
else
	if [ $hour -ge 9 -a $hour -lt 18 ]; then
		/usr/bin/open -g /Users/Shared/My\ Scripts/QQAutoLogin.app
		###/Applications/QQ.app/Contents/MacOS/QQ
	fi	
fi

exit;
