#!/bin/bash
# To create a patch, git diff > mypatch.patch
repo_dir="clients"

cp fakePremium.patch "$repo_dir"
cp patchAbout.patch "$repo_dir"

cd "$repo_dir"

git apply fakePremium.patch -v
git apply patchAbout.patch -v || true # ignore error
