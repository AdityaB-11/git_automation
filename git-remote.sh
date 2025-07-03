#!/bin/bash

source ~/.envvars

REPO_NAME=$(basename "$PWD")
echo "📝 Creating repo: $REPO_NAME"

# Creating GitHub repo
curl -s -H "Authorization: token $GITHUB_TOKEN" \
     -d "{\"name\":\"$REPO_NAME\"}" \
     https://api.github.com/user/repos > /dev/null 2>&1

echo "Running git init..."
git init

echo "Renaming branch to main..."
git branch -M main

echo "Adding remote origin..."
git remote add origin "https://$GITHUB_TOKEN@github.com/$GITHUB_USERNAME/$REPO_NAME.git"

# Check if any files are present to commit
if [ -z "$(git status --porcelain)" ]; then
    echo "⚠Add files to commit. Add some files first."
    exit 1
fi

echo "Making initial commit..."
git add .
git commit -m "initial push"
