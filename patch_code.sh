#!/bin/bash
patch_file="fakePremium.patch"
repo_dir="clients"

cp "$patch_file" "$repo_dir"

cd "$repo_dir"

echo "Apple Patch:"
cat "$patch_file"

git apply "$patch_file"
