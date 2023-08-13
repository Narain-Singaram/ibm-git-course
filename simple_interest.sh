#!/bin/bash

# Simple Interest Calculator (Narain Singaram)

# Function to calculate simple interest
calculate_simple_interest() {
  principal=$1
  rate=$2
  time=$3
  interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
  echo "Principal Amount: $principal"
  echo "Interest Rate: $rate%"
  echo "Time (years): $time"
  echo "Simple Interest: $interest"
}

# Read input values
read -p "Enter Principal Amount: " principal
read -p "Enter Interest Rate (percent): " rate
read -p "Enter Time (in years): " time

# Call the function to calculate simple interest
calculate_simple_interest "$principal" "$rate" "$time"
