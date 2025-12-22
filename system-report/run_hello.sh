#!/bin/bash

# Try to compile hello.c
gcc hello.c -o hello 2> error.log

# Check if compilation succeeded
if [ $? -eq 0 ]; then
    echo "Compilation successful, running program..."
    ./hello
else
    echo "Compilation failed. See error.log for details."
fi
