import json

with open("clients/apps/browser/src/manifest.json", "r", encoding="utf-8") as f:
    orig = json.load(f)

orig["name"] = "Sunsetwarden"
orig["short_name"] = "Sunsetwarden"
orig["author"] = "Sunset Edu. & Tech. Group and Bitwarden Inc."
orig["homepage_url"] = "https://github.com/lwd-temp/bitwarden-browser-extension-builder"
orig["browser_action"]["default_title"] = "Sunsetwarden"
orig["sidebar_action"]["default_title"] = "Sunsetwarden"
orig["applications"]["gecko"]["id"] = "{096091b7-0c7a-4e9e-a7c2-b9aed40cd430}"

with open("clients/apps/browser/src/manifest.json", "w", encoding="utf-8") as f:
    json.dump(orig, f, indent=2)
