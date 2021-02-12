#!/bin/bash

find ./ -type f \( -name "*.php" -o -name "*.js" \) -exec sed -i -e "s/@unreleased/@since $1/g" {} \;
