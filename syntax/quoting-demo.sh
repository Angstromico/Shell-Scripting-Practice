#!/bin/bash

#Process arguments using a for loop
for arg in "$@"; do
    echo "Arguments: The \$arg are $arg"
done