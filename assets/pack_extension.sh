#!/bin/bash
mkdir ext_tmp

unzip clients/apps/browser/dist/dist-chrome.zip -d ext_tmp

if [ -n "$PACK_EXTENSION_KEY" ]; then
    echo "PACK_EXTENSION_KEY Found, saving..."
    echo "$PACK_EXTENSION_KEY" > build.pem
    chrome --pack-extension=ext_tmp --pack-extension-key=build.pem
else
    echo "PACK_EXTENSION_KEY Not Found"
    chrome --pack-extension=ext_tmp
fi

cp ext_tmp.crx clients/apps/browser/dist/dist-chrome.crx
