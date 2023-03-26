#!/bin/bash

# Get the CPU temperature from sensors command
temp=$(sensors | grep 'Tctl' | awk '{print $2}')

# Format the temperature output
formatted_temp=$(echo "$temp" | sed -e 's/+//g')

# Output the temperature to standard output
echo " $formatted_temp"
