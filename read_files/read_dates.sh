#!/bin/bash

# Path to the input file (one level up)
SCRIPT_DIR="$(dirname "$0")"
input_file="$SCRIPT_DIR/../dates"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Input file not found!"
    exit 1
fi

# Read the file line by line
concert_number=1
while IFS=" " read -r date attendees; do
    # Skip empty lines
    [ -z "$date" ] && continue

    echo "On this $date, this number of people attended concert number $concert_number: $attendees"
    ((concert_number++))
done < "$input_file"


