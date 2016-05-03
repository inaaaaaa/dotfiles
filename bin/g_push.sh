#!/bin/bash

git branch
branch=$(git branch | grep \* | awk '{print $2}')
git push origin $branch:$branch
