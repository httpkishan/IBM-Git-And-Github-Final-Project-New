#!/bin/bash

# Prompt the user for principal amount, rate, time, and compounding frequency
echo "Enter the principal amount:"
read principal

echo "Enter the annual interest rate (as a decimal):"
read rate

echo "Enter the time period (in years):"
read time

echo "Enter the number of times interest is compounded per year:"
read n

# Calculate compound interest using bc
amount=$(echo "$principal * (1 + $rate / $n) ^ ($n * $time)" | bc -l)

# Calculate compound interest by subtracting the principal from the amount
interest=$(echo "$amount - $principal" | bc -l)

# Display the result
echo "Compound Interest: $interest"
