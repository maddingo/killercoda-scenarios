#!/bin/bash
# SDKman is run in the background, we have to wait for the file
set +x
while [ ! -f $HOME/.env-ready ] ; do
    sleep 3
done
source $HOME/.sdkman/bin/sdkman-init.sh
sdk default java 11.0.1-open
