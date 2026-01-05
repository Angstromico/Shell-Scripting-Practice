#!/bin/bash

# Check if filename was provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 output_filename"
    exit 1
fi

output_file="$1"

# Start date
start_date="2020-01-01"

# Generate 20 dates with random numbers and save to file
for i in {0..19}; do
    # Calculate date offset
    current_date=$(date -d "$start_date + $i days" +%Y-%m-%d)

    # Generate a random 6-digit number (100000–999999)
    random_number=$((100000 + RANDOM % 900000))

    # Append to file
    echo "$current_date $random_number" >> "$output_file"
done

echo "✅ Data written to $output_file"
