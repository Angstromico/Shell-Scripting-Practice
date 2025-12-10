#! /bin/bash

# Show the numbers of received arguments 

printf "Number of arguments: %d\n" "$#"

printf "All arguments: %s\n" "$@"

printf "First argument: %s\n" "$1"

for arg in "$@"; do
    printf "Argument: %s\n" "$arg"
done

echo "$*: All arguments are: " $*
# ./show-count.sh $*

echo

echo "$@: All arguments are: " $@
# ./show-count.sh $@
echo