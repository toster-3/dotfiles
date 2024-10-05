#!/bin/sh

PERC="$(acpi -b | awk -F', ' '{print $2}')"
PERCN="$(echo $PERC | awk -F% '{print $1}')"
CHARG="$(acpi -b | awk '{print $3}')"
ICON=""

#if [[ $CHARG != 'Not' ]]; then
#	ICON="󰂄"
if [[ $PERCN -le 30 ]]; then
	ICON="󰁼"
elif [[ $PERCN -le 60 ]]; then
	ICON="󰁿"
else
	ICON="󰁹"
fi

echo "$ICON$PERC"
