#!/bin/bash

echo Processing $# arguments

# Process arguments with for loop
for arg in "$@"; do
    echo "Argument: $arg"
done
