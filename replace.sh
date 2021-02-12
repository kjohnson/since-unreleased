#!/bin/bash

find ./ -type f -name "*.php" -exec sed -i -e "s/{{UNRELEASED}}/$1/g" {} \;
