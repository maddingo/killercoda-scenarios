#!/bin/bash
apt install -y libarchive-tools
curl -L https://marketplace.visualstudio.com/_apis/public/gallery/publishers/arcanis/vsextensions/vscode-zipfs/2.3.0/vspackage | bsdtar -xvf - extension
mv extension /opt/.katacodacode/extensions/zipfs-extension

