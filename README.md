# bitwarden-browser-extension-builder

Builder for Bitwarden Edge & Firefox Addon.

## Get Sunsetwarden

[![Mozilla Add-on Version](https://img.shields.io/amo/v/sunsetwarden?logo=firefox)
](https://addons.mozilla.org/en-US/firefox/addon/sunsetwarden/) [![Edge Add-on Version](https://img.shields.io/badge/dynamic/json?label=edge%20add-on&prefix=v&query=%24.version&url=https%3A%2F%2Fmicrosoftedge.microsoft.com%2Faddons%2Fgetproductdetailsbycrxid%2Fnbnflbnmlablihnpobeakamhjckamaaj&logo=microsoftedge&logoColor=%230078D7)](https://microsoftedge.microsoft.com/addons/detail/sunsetwarden/nbnflbnmlablihnpobeakamhjckamaaj?hl=en-US)

Sunsetwarden is an exclusive build of the popular password manager Bitwarden, designed for internal use by SETG.

This extension is designed for internal use but still may be used by the public. The user must have a Bitwarden server to connect to because our server is not accessible from the internet. However, it's strongly recommended to use the official build of Bitwarden if you are not a member of the team. We won't be responsible for any personal data or financial losses.

You may also check its [Upstream source](https://github.com/bitwarden/clients) and our [Build workflow](https://github.com/SunsetMkt/bitwarden-browser-extension-builder).

## Development

The main modified built file is `background.js`, check diff with the latest stable official build.

**For beginners, it's always recommended to use the latest official build of your password manager.**

To load the built extension, [load an unpacked extension](https://developer.chrome.com/docs/extensions/get-started/tutorial/hello-world#load-unpacked) or [self-hosting Chromium extensions](https://www.meziantou.net/self-hosting-chromium-extensions.htm).
