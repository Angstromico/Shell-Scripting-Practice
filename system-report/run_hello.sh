#!/bin/bash

SCRIPT_DIR="$(dirname "$0")"

# Compile hello.c into SCRIPT_DIR
gcc "$SCRIPT_DIR/hello.c" -o "$SCRIPT_DIR/hello" 2> "$SCRIPT_DIR/error.log"

if [ $? -eq 0 ]; then
    echo "Compilation successful, running program..."
    "$SCRIPT_DIR/hello"
else
    echo "Compilation failed. See error.log for details."
fi

