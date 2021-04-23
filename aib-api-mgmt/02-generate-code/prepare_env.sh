#!/bin/bash
apt install -y bsdtar
curl -L https://marketplace.visualstudio.com/_apis/public/gallery/publishers/arcanis/vsextensions/vscode-zipfs/2.3.0/vspackage | bsdtar - zipfs-extension
mv zipfs-extension /opt/.katacodacode/extensions/

