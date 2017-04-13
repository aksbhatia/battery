#!/bin/bash


#Email Recipients (the folks whom you share the charger with!)
EMAIL_RECIPIENTS="harshkumar@paypal.com,mohamansari@paypal.com,aksbhatia@paypal.com"

#Get the available battery percentage.
#Install the battery module from here: https://github.com/Goles/Battery
BATTERY=$(battery -p)

#Extract out the number
BATTERY_NUMBER=$(echo $BATTERY | grep -o -E '[0-9]+' | tail -n1) 

#Display it (if needed)
echo $BATTERY_NUMBER

#Logic for almost full and almost dying
if [ "$BATTERY_NUMBER" -gt 90 ]; then
    mail -s "Battery Full!" $EMAIL_RECIPIENTS <<< "My Laptop is fully charged. If you wish to charge your lapi, feel free to snatch the wire!"
elif [ "$BATTERY_NUMBER" -lt 10 ]; then
    mail -s "Battery Dying! Help!" $EMAIL_RECIPIENTS <<< "My Laptop is almost discharged. Please help by extending the charger!"
fi
