# bitwarden-browser-extension-builder

Builder for Bitwarden Chrome & Firefox Extension.

## Get Sunsetwarden

[Firefox](https://addons.mozilla.org/en-US/firefox/addon/sunsetwarden/) [Edge](https://microsoftedge.microsoft.com/addons/detail/sunsetwarden/nbnflbnmlablihnpobeakamhjckamaaj?hl=en-US)

Sunsetwarden is an exclusive build of the popular password manager Bitwarden, designed for internal use by SETG.

This extension is designed for internal use but still may be used by the public. The user must have a Bitwarden server to connect to because our server is not accessible from the internet. However, it's strongly recommended to use the official build of Bitwarden if you are not a member of the team. We won't be responsible for any personal data or financial losses.

## Development

The main modified built file is `background.js`, check diff with the latest stable official build.

**For beginners, it's always recommended to use the latest official build of your password manager.**

To load the built extension, [load an unpacked extension](https://developer.chrome.com/docs/extensions/get-started/tutorial/hello-world#load-unpacked) or [self-hosting Chromium extensions](https://www.meziantou.net/self-hosting-chromium-extensions.htm).
