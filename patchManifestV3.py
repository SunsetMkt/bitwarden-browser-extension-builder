import json

with open("clients/apps/browser/src/manifest.v3.json", "r", encoding="utf-8") as f:
    orig = json.load(f)

orig["author"] = "Sunset Edu. & Tech. Group and Bitwarden Inc."
orig["homepage_url"] = "https://github.com/lwd-temp/bitwarden-browser-extension-builder"
orig["action"]["default_title"] = "Sunsetwarden"
orig["sidebar_action"]["default_title"] = "Sunsetwarden"

with open("clients/apps/browser/src/manifest.v3.json", "w", encoding="utf-8") as f:
    json.dump(orig, f, indent=2)
