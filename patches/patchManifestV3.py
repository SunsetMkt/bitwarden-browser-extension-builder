import json

with open("clients/apps/browser/src/manifest.v3.json", "r", encoding="utf-8") as f:
    orig = json.load(f)

orig["name"] = "Sunsetwarden"
orig["short_name"] = "Sunsetwarden"
orig["author"] = "Sunset Edu. & Tech. Group and Bitwarden® community"
orig["homepage_url"] = "https://github.com/SunsetMkt/bitwarden-browser-extension-builder"
orig["action"]["default_title"] = "Sunsetwarden"
orig["sidebar_action"]["default_title"] = "Sunsetwarden"
del orig["applications"]["gecko"]["id"]
orig["description"] = (
    "Sunsetwarden is an exclusive build of the popular password manager Bitwarden®, designed for internal use by SETG."
)
orig["icons"] = {
    "16": "images/icon16_gray.png",
    "32": "images/icon32_gray.png",
    "48": "images/icon48_gray.png",
    "96": "images/icon96_gray.png",
    "128": "images/icon128_gray.png",
}

if len(orig["description"]) > 132:
    raise ValueError("Description too long")

with open("clients/apps/browser/src/manifest.v3.json", "w", encoding="utf-8") as f:
    json.dump(orig, f, indent=2)
    print("Wrote manifest.v3.json")
