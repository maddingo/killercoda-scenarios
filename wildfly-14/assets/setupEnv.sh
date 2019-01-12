#!/bin/bash

echo "This tool sets up the node for the scenario"

# Katacoda doesn't provide a Java 11 environment yet
sudo apt -qq install -y zip
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install java 11.0.1-open
