#!/bin/bash

echo Processing $# arguments

# Process arguments with while loops
COUNT=1
while [ "$COUNT" -le "$#" ]; do
    echo "Argument $COUNT: ${!COUNT}"
    ((COUNT++))
done