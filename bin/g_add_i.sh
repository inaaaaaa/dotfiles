#!/bin/bash

git status --short

for file_name in $(git status --porcelain | awk '{print $NF}'); do
    echo "add? : ${file_name} [y/N]"
    read ans
    if [ "$ans" = "y" ]; then
        git add $file_name
    fi
done

git status --short
