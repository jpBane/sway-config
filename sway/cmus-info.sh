#!/bin/bash

# Get cmus output
info=$(cmus-remote -Q 2>/dev/null)

# Extract artist and title
artist=$(echo "$info" | grep '^tag artist' | cut -d ' ' -f 3-)
title=$(echo "$info" | grep '^tag title' | cut -d ' ' -f 3-)
status=$(echo "$info" | grep '^status' | cut -d ' ' -f 2)

# Only show if playing
if [ "$status" = "playing" ]; then
	echo " $artist - $title"
else
	echo ""
fi
