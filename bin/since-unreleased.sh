#!/bin/bash

find ./ -type f \( -name "*.php" -o -name "*.js" -o -name "*.jsx" \) -not \( -path "./vendor/*" -o -path "./node_modules/*" \) -exec sed -i -e "s/@unreleased/@since $1/g" {} \;

