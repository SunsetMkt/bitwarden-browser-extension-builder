#!/bin/bash
# To create a patch, git diff > mypatch.patch
repo_dir="clients"

cp fakePremium.patch "$repo_dir"

# Python script before cd
python patchManifestV3.py

cd "$repo_dir"

git apply fakePremium.patch -v
