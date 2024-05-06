#!/bin/bash
file_path="clients/apps/browser/src/autofill/browser/main-context-menu-handler.ts"
temp_dir="/tmp"
temp_file="$temp_dir/main-context-menu-handler.ts"
patch_file="RemoveCheckPremiumAccess.patch"

cp "$file_path" "$temp_file"

# sed -i 's/^\(\s*\)checkPremiumAccess: true,\s*$/\1\/\/checkPremiumAccess: true,/' "$file_path"
patch "$file_path" < "$patch_file"

diff "$file_path" "$temp_file"
