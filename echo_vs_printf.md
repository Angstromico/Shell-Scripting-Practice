# Echo vs Printf in Bash

This guide explores the differences between `echo` and `printf` in bash scripting, detailing their capabilities and use cases.

## `echo`

`echo` is the basic command for printing text to the terminal. It is simple but has inconsistencies across different shells and systems.

### What you CAN do with `echo`:

- **Print simple text:**

  ```bash
  echo "Hello World"
  ```

- **Print variable values:**

  ```bash
  echo "My home is $HOME"
  ```

- **Interpret backslash escapes** (with `-e` flag):

  ```bash
  echo -e "Line 1\nLine 2"  # Newline
  echo -e "Tab\tSeparated"  # Tab
  ```

- **Omit the trailing newline** (with `-n` flag):

  ```bash
  echo -n "Enter name: "
  ```

### What `echo` is BAD at / CANNOT do easily:

- **Consistent formatting:** It's hard to align columns of text perfectly.
- **Portability:** Different versions of `echo` (sh, bash, zsh, different OSs) handle flags like `-e` or `-n` differently. POSIX `echo` does not support flags at all in strict mode.
- **Formatting numbers:** cannot easily limit decimal places (e.g., standardizing `3.14159` to `3.14`).

---

## `printf`

`printf` stands for "print formatted". It is modeled after the C programming language function and provides robust formatting control. It is much more portable and consistent than `echo`.

### What you CAN do with `printf`:

- **Format strings:** align text, padding with spaces or zeros.

  ```bash
  # %-10s means a string padded to 10 chars, left aligned
  printf "%-10s | %s\n" "Name" "ID"
  printf "%-10s | %s\n" "Alice" "001"
  ```

- **Format numbers:** precise control over floats and integers.

  ```bash
  printf "Pi is approx %.2f\n" 3.14159  # Output: Pi is approx 3.14
  printf "Order: %04d\n" 5              # Output: Order: 0005
  ```

- **No automatic newline:** Unlike `echo`, `printf` does NOT add a newline by default. You must explicitly add `\n`. This gives you full control.

  ```bash
  printf "No newline here..."
  printf "Now it continues on the same line.\n"
  ```

- **Assign to a variable (v4.1+):**

  ```bash
  # Store formatted string in variable 'my_var' instead of printing
  printf -v my_var "User: %s" "$USER"
  ```

### Summary Comparison

| Feature         | `echo`                         | `printf`                               |
| :-------------- | :----------------------------- | :------------------------------------- |
| **Ease of use** | Simple, easier for basic tasks | Slightly more complex syntax           |
| **Newlines**    | Adds `\n` automatically        | Must add `\n` manually                 |
| **Formatting**  | Very limited                   | Robust (alignment, padding, precision) |
| **Portability** | Inconsistent across systems    | Highly portable and consistent         |
