We want to install Energy Components 12.1.0. This requires OpenJDK 11.

## Install SDKman
Install zip tool
`sudo apt install -y -q zip`{{execute}}

Install sdkman
`curl -s "https://get.sdkman.io" | bash && source "$HOME/.sdkman/bin/sdkman-init.sh"`{{execute}}

## Install OpenJDK 11
`sdk install java 11.0.1-open`{{execute}}
