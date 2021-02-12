#!/bin/bash

find ./ -type f \( -name "*.php" -o -name "*.js" -o -name "*.jsx" \) -exec sed -i -e "s/@unreleased/@since $1/g" {} \;
