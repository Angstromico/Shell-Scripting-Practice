# First Steps in Shell Scripting 🐚

Welcome to your Shell Scripting journey! This guide covers the essentials to get you writing powerful scripts for your Linux machine.

## 1. What is a Shell Script?

A shell script is a file containing a series of commands that the shell (command-line interpreter) executes. It's used to automate tasks, from simple file manipulation to complex system administration.

## 2. Your First Script: The Shebang (`#!`)

Every script should start with a "shebang" line. This tells the system which interpreter to use to run the file.

```bash
#!/bin/bash
# This is a comment. The system ignores lines starting with #
echo "Hello, World!"
```

**Steps to run it:**

1. Create a file named `hello.sh`.
2. Add the code above.
3. **Make it executable**: `chmod +x hello.sh`
4. Run it: `./hello.sh`

## 3. Variables

Variables store data. By convention, usage of uppercase for constants or environment variables is common, but lowercase is fine for local variables. **Do not put spaces around the `=` sign.**

```bash
#!/bin/bash

GREETING="Hello"
NAME="Memz"

# Use $ to access the variable
echo "$GREETING, $NAME!"
```

## 4. User Input

Use `read` to get input from the user.

```bash
#!/bin/bash

echo "What is your favorite color?"
read COLOR

echo "Wow, $COLOR is a great color!"
```

## 5. Conditional Logic (If/Else)

Make decisions in your scripts. Spaces inside the brackets `[ ]` are crucial!

```bash
#!/bin/bash

echo "Enter a number:"
read NUM

if [ "$NUM" -gt 10 ]; then
    echo "The number is greater than 10."
elif [ "$NUM" -eq 10 ]; then
    echo "The number is exactly 10."
else
    echo "The number is less than 10."
fi
```

_Comparisons:_ `-eq` (equal), `-ne` (not equal), `-gt` (greater than), `-lt` (less than), `-ge` (greater or equal), `-le` (less or equal).

## 6. Loops

Repeat tasks efficiently.

**For Loop:**

```bash
#!/bin/bash
# Print numbers 1 to 5
for i in {1..5}; do
    echo "Number: $i"
done
```

**While Loop:**

```bash
#!/bin/bash
COUNT=1
while [ $COUNT -le 5 ]; do
    echo "Count: $COUNT"
    ((COUNT++))
done
```

## 7. Functions

Organize your code into reusable blocks.

```bash
#!/bin/bash

greet_user() {
    local USERname=$1 # $1 is the first argument passed to the function
    echo "Welcome back, $USERname!"
}

# Call the function
greet_user "Memz"
```

## 8. Special Variables

- `$0` - The name of the script.
- `$1`, `$2`... - The arguments passed to the script.
- `$#` - The number of arguments passed.
- `$?` - The exit status of the last command (0 usually means success).

## Next Steps

- Try modifying `hello.sh` to ask for your name and greet you.
- Write a script to back up a specific folder.
- Explore `grep`, `awk`, and `sed` for text processing.

Happy Scripting! 🚀
