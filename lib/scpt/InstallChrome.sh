#!/bin/bash

# InstallChrome.sh
# Install Google Chrome Mac

mkdir -p /Users/${USER}/Temporary
cd /Users/${USER}/Temporary
# Add user temporary folder, and change working directory to it.

curl -L -O https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
hdiutil mount -nobrowse googlechrome.dmg
cp -R /Volumes/Google\ Chrome/Google\ Chrome.app /Applications/
hdiutil unmount /Volumes/Google\ Chrome
mv googlechrome.dmg ~/Downloads/
# Download Chrome, and install it.

cd /Users/${USER}
rm -r Temporary
# Remove user temporary folder.