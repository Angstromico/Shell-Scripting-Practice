#!/bin/bash

echo "Welcome to Customer Service!"
echo "Please choose an option:"
echo "A) Change password"
echo "B) Report network fail"
echo "C) Send a message to the admin"

read -p "Enter your choice (A/B/C): " choice
choice=$(echo "$choice" | tr '[:upper:]' '[:lower:]')  # normalize input

if [[ "$choice" == "a" ]]; then
    # Change password
    while true; do
        read -s -p "Enter new password: " pass1
        echo
        read -s -p "Repeat new password: " pass2
        echo

        if [[ "$pass1" != "$pass2" ]]; then
            echo "❌ Passwords do not match. Try again."
            continue
        fi

        # Validate password rules: at least 8 chars, one uppercase, one lowercase, one digit, one special char
        if [[ ${#pass1} -lt 8 ]]; then
            echo "❌ Password must be at least 8 characters."
            continue
        fi
        if ! [[ "$pass1" =~ [A-Z] ]]; then
            echo "❌ Password must contain at least one uppercase letter."
            continue
        fi
        if ! [[ "$pass1" =~ [a-z] ]]; then
            echo "❌ Password must contain at least one lowercase letter."
            continue
        fi
        if ! [[ "$pass1" =~ [0-9] ]]; then
            echo "❌ Password must contain at least one number."
            continue
        fi
        if ! [[ "$pass1" =~ [^a-zA-Z0-9] ]]; then
            echo "❌ Password must contain at least one special character."
            continue
        fi

        echo "✅ Password successfully changed!"
        break
    done

elif [[ "$choice" == "b" ]]; then
    # Report network fail
    echo "Please select the type of failure:"
    echo "1) Internet down"
    echo "2) Slow connection"
    echo "3) Router issue"
    echo "4) Custom failure"

    read -p "Enter your choice (1-4): " fail_choice

    case $fail_choice in
        1) echo "📡 Reported: Internet down. Our team will repair the damage soon." ;;
        2) echo "🐢 Reported: Slow connection. Our team will repair the damage soon." ;;
        3) echo "📶 Reported: Router issue. Our team will repair the damage soon." ;;
        4) read -p "Describe your custom failure: " custom_fail
           echo "📝 Reported: $custom_fail. Our team will repair the damage soon." ;;
        *) echo "❌ Invalid option." ;;
    esac

elif [[ "$choice" == "c" ]]; then
    # Send message to admin
    read -p "Enter your message to the admin: " admin_msg
    echo "You wrote: \"$admin_msg\""
    read -p "Are you sure you want to send this? (y/n): " confirm

    if [[ "$confirm" =~ ^[Yy]$ ]]; then
        echo "📨 Message sent to admin: $admin_msg"
    else
        echo "❌ Message not sent."
    fi

else
    echo "❌ Invalid choice."
fi
