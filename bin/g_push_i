#!/bin/bash

git branch
branch=$(git branch | grep \* | awk '{print $2}')

echo "You will push \"${branch}\" branch. ok? [y/N]"
read ans
if [ "$ans" != "y" ]; then
    echo "exit."
    exit 1
fi

git push origin $branch:$branch
