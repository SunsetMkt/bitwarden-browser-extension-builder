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

# Read last browser tag from a file
if [ -f ../last_browser_tag.txt ]; then
    last_browser_tag=$(cat ../last_browser_tag.txt)
    echo "Last browser tag: $last_browser_tag"
    echo "Latest browser tag: $latest_browser_tag"
    if [ "$last_browser_tag" == "$latest_browser_tag" ]; then
        echo "No new browser tag found"
        # cd ..
        # mv clients stopped_clients
        # exit 1
    fi
    echo "New browser tag found: $latest_browser_tag"
else
    last_browser_tag=""
    echo "No last browser tag found"
fi

# Write the latest browser tag to a file
echo "$latest_browser_tag" > ../last_browser_tag.txt
echo "Last browser tag: $latest_browser_tag"

echo "Go back to $latest_browser_tag"
git checkout $latest_browser_tag

# Install the dependencies
npm ci
# Configure git blame to ignore certain commits (generally administrative changes, such as formatting)
git config blame.ignoreRevsFile .git-blame-ignore-revs
