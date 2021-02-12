#!/bin/bash

find ./ -type f -name "*.php" -exec sed -i -e "s/@unreleased/@since $1/g" {} \;
