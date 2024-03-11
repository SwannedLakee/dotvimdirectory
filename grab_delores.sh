#!/bin/bash

# List all windows managed by the window manager
# Filter for Firefox windows
# Extract and print the window titles

wmctrl -l | grep -i firefox | awk -F ' ' '{$1=$2=$3=""; print $0}' | grep Delores | sed 's/ — Mozilla Firefox//'| sed  's/^ */* /'

