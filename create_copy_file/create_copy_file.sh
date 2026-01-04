#!/bin/bash

CreateCopyFile() {
    local source_file="$1"
    local copy_file="$2"

    if [[ -z "$source_file" || -z "$copy_file" ]]; then
        echo "Usage: CreateCopyFile <source_file> <copy_file>"
        return 1
    fi

    if [[ ! -f "$source_file" ]]; then
        echo "Source file '$source_file' does not exist."
        return 1
    fi

    cat "$source_file" | tee "$copy_file" > /dev/null && chmod 755 "$copy_file"

    if [[ $? -eq 0 ]]; then
        echo "File '$source_file' copied to '$copy_file' with permissions set to 755."
    else
        echo "Failed to copy file."
        return 1
    fi
}

CreateCopyFile "$1" "$2"