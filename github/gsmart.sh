#!/bin/bash

# Check if inside a git repo
if [ ! -d ".git" ]; then
    echo "New project detected"

    read -p "Enter repository name: " repo_name
    read -p "Public or private? (public/private): " visibility
    read -p "Commit message: " commit_msg

    git init
    git add .
    git commit -m "${commit_msg:-Initial commit}"
    git branch -M main

    echo "Creating GitHub repo..."
    gh repo create "$repo_name" --"$visibility" --source=. --push

else
    echo "Existing repository detected"

    read -p "Commit message: " commit_msg

    git add .
    git commit -m "${commit_msg:-Update}"
    git push

fi

echo "Done!"