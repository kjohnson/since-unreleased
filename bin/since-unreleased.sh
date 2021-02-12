#!/bin/bash

# Find files in the directory ./ (root)
# find ./ -type f

# Include files with extensions .php, .js, or .jsx
# \( -name "*.php" -o -name "*.js" -o -name "*.jsx" \)

# Exclude the directories vendor (composer) and node_modules (npm)
# -not \( -path "./vendor/*" -o -path "./node_modules/*" \)

# Replace the string @unreleased with the value of the first argument, prefixed with @since
# -exec sed -i -e "s/@unreleased/@since $1/g" {} \;

find ./ -type f \( -name "*.php" -o -name "*.js" -o -name "*.jsx" \) -not \( -path "./vendor/*" -o -path "./node_modules/*" \) -exec sed -i -e "s/@unreleased/@since $1/g" {} \;
