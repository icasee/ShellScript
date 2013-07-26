#!/bin/bash
STATUS=`pmset -g ps`
if [[ "$STATUS" == *discharging* ]]; then

	P1=`echo "$STATUS" | grep InternalBattery | awk -F' ' '{ print $2 }' | awk -F'%;' '{ print $1}'` 
	
	if [ "$P1" -le 40 ]; then

		#echo "The bettery power is less then 30"
		/usr/bin/open -g /Users/Shared/My\ Scripts/PowerNotify.app

	#else

		#echo "Charge:$P1%"

	fi

#else 

	#echo "AC Power in used."

fi

exit 0;
