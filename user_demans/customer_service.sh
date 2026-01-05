#!/bin/bash

echo "Welcome to the Interactive Bash Quiz!"

# Question 1: Favorite programming language
read -p "What is your favorite programming language? " lang

if [[ "$lang" == "Python" ]]; then
    echo "🐍 Nice choice! Python is great for rapid development."
elif [[ "$lang" == "C" ]]; then
    echo "⚡ C is powerful and close to the hardware!"
elif [[ "$lang" == "JavaScript" ]]; then
    echo "🌐 JavaScript rules the web!"
else
    echo "Interesting! $lang is a solid option."
fi

# Question 2: Years of experience
read -p "How many years of coding experience do you have? " years

if (( years < 1 )); then
    echo "You're just starting out — keep learning!"
elif (( years < 5 )); then
    echo "You’re building solid skills with $years years of experience."
else
    echo "Wow, $years years! You must be a seasoned developer."
fi

# Question 3: Yes/No type
read -p "Do you enjoy working with Linux? (y/n) " answer

if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
    echo "🐧 Awesome! Linux is a developer’s best friend."
else
    echo "😅 Fair enough, not everyone loves Linux."
fi

# Question 4: Another Yes/No branching
read -p "Would you like to see a random tip? (y/n) " tip

if [[ "$tip" == "y" || "$tip" == "Y" ]]; then
    tips=("Use version control!" "Write tests early." "Automate repetitive tasks." "Keep learning new tools.")
    random_tip=${tips[$RANDOM % ${#tips[@]}]}
    echo "💡 Tip: $random_tip"
else
    echo "Okay, no tips for now!"
fi

echo "Thanks for participating in this interactive script!"
