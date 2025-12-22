#!/bin/bash

Mail() {
    echo Mail "$@"
    cat
    echo
    echo =============================
    echo
}

IFS=:
while read name amount email
do
    Mail -s 'Late payment due' "$email" <<EOF
Dear $name,

This is a reminder that you have an outstanding payment of $amount.

Best regards,
The Payment Reminder Script
EOF
done < data.txt
