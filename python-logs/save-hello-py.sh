#!/bin/bash

SaveHelloPy() {
    SCRIPT_DIR="$(dirname "$0")"
    python3 "$SCRIPT_DIR/hello.py" | tee "$SCRIPT_DIR/hello.log"
}

SaveHelloPy
