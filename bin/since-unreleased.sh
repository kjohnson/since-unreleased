#!/bin/bash

# Find files in the directory ./ (root)
# find $1 -type f

# Include files with extensions .php, .js, or .jsx
# \( -name "*.php" -o -name "*.js" -o -name "*.jsx" \)

# Exclude the directories vendor (composer) and node_modules (npm)
# -not \( -path "./vendor/*" -o -path "./node_modules/*" \)

# Replace the string @unreleased with the value of the first argument, prefixed with @since
# @note `sed -Ei` Same as -E -i with no backup suffix - FILE will be edited in-place without creating a backup.
# -exec sed -Ei "s/@unreleased/@since $2/g" {} \;

find "$1" -type f \( -name "*.php" -o -name "*.js" -o -name "*.jsx" \) -not \( -path "./vendor/*" -o -path "./node_modules/*" \) -exec sed -Ei "s/@unreleased/@since $2/g" {} \;
