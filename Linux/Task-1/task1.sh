#!/bin/bash

# Check the length of the password
function check_password_length() {
    if [ ${#1} -ge 8 ]; then
        return 0
    else
        return 1
    fi
}

echo "Welcome SCA Queen 👑 to our registration portal"

read -p "Enter your username: " username

# -s hides the text entered
read -s -p "Enter your password (minimum 8 characters): " password
echo

if check_password_length "$password"; then
    echo "Registration completed. Welcome, $username 🥳 !"
else
    echo "Cannot complete registration 😔 as password is less than 8 characters."
fi
