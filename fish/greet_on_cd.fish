#!/usr/bin/fish

# Define a function that runs every time you change directory
function greet_on_cd --on-event fish_prompt
    if test (pwd) = "$HOME"
        echo "🏠 Welcome back home, Manuel!"
    else if test (pwd) = "/tmp"
        echo "⚡ You're in /tmp — be careful, files vanish here!"
    else
        echo "📂 You are now in:" + (pwd)
    end
end

greet_on_cd
