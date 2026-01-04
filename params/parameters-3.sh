#!/bin/bash

variable1="Hello World"
variable2=$1
variable3=$2
variable4=$3

echo "Number of past arguments: $#"
echo "All past arguments: $*"
echo "All past arguments: $@"
echo "The ID of this script is: $$"
echo "Who's running this script: $USER"
echo "How many seconsds since Unix epoch: $SECONDS"
echo "First variable: $variable1"
echo "Second variable: $variable2"
echo "Third variable: $variable3"
echo "Fourth variable: $variable4"