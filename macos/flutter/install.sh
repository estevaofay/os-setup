#!/bin/bash

#TO DO
# DOWNLOAD Latest release
# URL structure: https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_2.2.1-stable.zip

# Set env:
# LATEST_GITHUB_RELEASE_VERSION=$(curl -sL https://github.com/flutter/flutter/releases | grep -oP 'releases/tag/\K[^\"]+' | sort --version-sort | tail -1)

mkdir ~/.flutter
cd ~/.flutter
mv ~/Downloads/flutter_macos_2.2.1-stable.zip .
unzip

rm flutter_macos_2.2.1-stable.zip

echo -e "\n# Flutter" >> ~/.zshrc
echo -e "export FLUTTER_HOME=~/.flutter/flutter/bin\nexport PATH=\$PATH:\$FLUTTER_HOME" >> ~/.zshrc

