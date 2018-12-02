#!/bin/bash
# SDKman is run in the background, we have to wait for the file
while [ ! -f $HOME/.sdkman/bin/sdkman-init.sh ] ; do
    sleep 3
done
source $HOME/.sdkman/bin/sdkman-init.sh
