#!/bin/bash

# Ask the user for their name
echo -n "Please enter your name: "

# Read the input into the variable 'user_name'
read user_name

# Print the name to the console using printf for reliable formatting
printf "Hello, %s! Welcome to bash scripting.\n" "$user_name"
