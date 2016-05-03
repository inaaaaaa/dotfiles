#!/bin/bash

git branch | awk '{print NR, $0}'
echo "Please select the branch number."
read ans
git checkout $(git branch | sed 's/\*//' | awk '{print $1}' | sed -n "$ans,1p")
