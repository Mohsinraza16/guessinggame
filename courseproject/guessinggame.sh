#!/bin/bash
# Function to count files in the current directory
count_files() {
  local num_files=$(ls -l | grep -c '^-' )
  echo "$num_files"
}

# Main function for the guessing game
guessing_game() {
  local num_files=$(count_files)
  local user_guess

  while true; do
    read -p "How many files are in the current directory? " user_guess

    if ! [[ "$user_guess" =~ ^[0-9]+$ ]]; then
      echo "Invalid input. Please enter a valid number."
    elif [ "$user_guess" -lt "$num_files" ]; then
      echo "Too low. Try again."
    elif [ "$user_guess" -gt "$num_files" ]; then
      echo "Too high. Try again."
    else
      echo "Congratulations! Your guess is correct. There are $num_files files in the current directory."
      break
    fi
  done
}

guessing_game

