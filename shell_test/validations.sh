#!/bin/bash

# Check if the variable exists

if [ ! "$MY_VAR" ]; then
    echo "MY_VAR is not set"
else
    echo "MY_VAR is set to: $MY_VAR"
fi

# Check if the length of the variable is greater than 0

if [ ${#MY_VAR} -gt 0 ]; then
    echo "MY_VAR has a length greater than 0"
else
    echo "MY_VAR is empty"
fi

# Check if the variable is empty

if [ -z "$MY_VAR" ]; then
    echo "MY_VAR is empty"
else
    echo "MY_VAR is not empty"
fi

# Compare variables:

if [ $STRING1 = $STRING2 ]; then
    echo "STRING1 is equal to STRING2"
else
    echo "STRING1 is not equal to STRING2"
fi

# Numbers comparison

if [ $NUM1 -gt $NUM2 ]; then
    echo "NUM1 is greater than NUM2"
else
    echo "NUM1 is not greater than NUM2"
fi

# If the folder exist and is a directory

if [ -d "$FILE" ]; then
    echo "$FILE is a valid directory"
else
    echo "$FILE is not a valid directory"
fi

# If the folder exist 

if [ -e "$FILE" ]; then
    echo "$FILE exists"
else
    echo "$FILE does not exist"
fi

# If the folder exists and is readable

if [ -r "$FILE" ]; then
    echo "$FILE is readable"
else
    echo "$FILE is not readable"
fi

# If the folder exists and is writable

if [ -w "$FILE" ]; then
    echo "$FILE is writable"
else
    echo "$FILE is not writable"
fi

# If the folder exists and is executable

if [ -x "$FILE" ]; then
    echo "$FILE is executable"
else
    echo "$FILE is not executable"
fi 
