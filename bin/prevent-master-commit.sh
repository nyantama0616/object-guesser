#!/bin/bash

# Prevent direct commits to master branch
if [ "$PRE_COMMIT_FROM_REF" = "" ] && [ "$(git symbolic-ref --short HEAD)" = "master" ]; then
    echo "❌ Direct commits to master branch are not allowed."
    echo "Please create a feature branch:"
    echo "  git checkout -b <your-branch-name>"
    exit 1
fi
