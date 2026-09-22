#!/usr/bin/env bash

# Simple Interest Calculator
# Formula: simple interest = (principal * rate * time) / 100

set -euo pipefail

read -r -p "Enter the principal amount: " principal
read -r -p "Enter the annual rate of interest (%): " rate
read -r -p "Enter the time period (years): " time

if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] ||
   ! [[ "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] ||
   ! [[ "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
  echo "Error: principal, rate, and time must be non-negative numbers." >&2
  exit 1
fi

simple_interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')
total_amount=$(awk -v p="$principal" -v si="$simple_interest" 'BEGIN { printf "%.2f", p + si }')

echo
printf 'Simple interest: %s\n' "$simple_interest"
printf 'Total amount: %s\n' "$total_amount"
