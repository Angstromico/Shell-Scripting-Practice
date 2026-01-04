#!/bin/bash

a=2 
b=5

#Introduction to Arithmetic Operations in Bash
echo "Arithmetic Operations between $a and $b: "

# Addition
sum=$((a + b))
echo "Sum: $sum"

# Subtraction
diff=$((a - b))
echo "Difference: $diff"

# Multiplication
product=$((a * b))
echo "Product: $product"

# Division
quotient=$((a / b))
echo "Integer Quotient: $quotient"

# Division (floating point with bc) 
quotient=$(echo "scale=2; $a / $b" | bc) 
echo "Floating Quotient: $quotient"

# Modulus
modulus=$((a % b))
echo "Modulus: $modulus"

# Exponentiation
exponent=$((a ** b))
echo "Exponentiation: $exponent"

# Increment
((a++))
echo "Incremented a: $a"

# Decrement
((b--))
echo "Decremented b: $b"

# Operating with floating point numbers using bc

# Floating Point Addition
float_sum=$(echo "scale=2; 2.5 + 3.7" | bc)
echo "Floating Point Sum: $float_sum"

# Floating Point Subtraction
float_diff=$(echo "scale=2; 5.8 - 2.3" | bc)
echo "Floating Point Difference: $float_diff"

# Floating Point Multiplication
float_product=$(echo "scale=2; 2.5 * 4.0" | bc)
echo "Floating Point Product: $float_product"

# Floating Point Division
float_quotient=$(echo "scale=2; 7.5 / 2.5" | bc)
echo "Floating Point Quotient: $float_quotient"