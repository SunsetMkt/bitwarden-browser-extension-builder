#!/bin/bash
# https://contributing.bitwarden.com/getting-started/clients/
# Clone the repository
git clone https://github.com/bitwarden/clients.git

# Go back to the latest browser release tag
cd clients
# Find all tags and sort by time
git fetch --tags
tags=$(git tag --sort=-creatordate)
# Find "browser" tag
latest_browser_tag=""
for tag in $tags; do
    if [[ $tag == *"browser"* ]]; then
        latest_browser_tag=$tag
        break
    fi
done
echo "Go back to $latest_browser_tag"
git checkout $latest_browser_tag

# Install the dependencies
npm ci
# Configure git blame to ignore certain commits (generally administrative changes, such as formatting)
git config blame.ignoreRevsFile .git-blame-ignore-revs
