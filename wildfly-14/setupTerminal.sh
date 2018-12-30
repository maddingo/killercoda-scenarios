#!/bin/bash
set +x
# setupEnv.sh is executed in the background
while [ ! -f $HOME/.env-ready ] ; do sleep 3 ; done && source $HOME/.sdkman/bin/sdkman-init.sh
sdk default java 11.0.1-open
echo " Now your terminal is ready"
