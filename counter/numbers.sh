#!/bin/bash

# Print infinite numbers starting from 1
num=1
while true; do
    echo $num
    num=$((num + 1))
    sleep 1
done