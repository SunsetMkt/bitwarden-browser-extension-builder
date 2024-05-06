#!/bin/bash
# https://contributing.bitwarden.com/getting-started/clients/browser/
cd clients/apps/browser
# npm run build:watch
# https://github.com/bitwarden/clients/blob/main/.github/workflows/build-browser.yml
# Build
npm run dist
# Build Manifest v3
npm run dist:mv3
# Build Chrome Manifest v3 Beta
npm run dist:chrome:beta
# Gulp
gulp ci
