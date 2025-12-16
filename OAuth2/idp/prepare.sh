#!/bin/bash

cat >>.bashrc<<EOF 

PATH=$PATH:$HOME/bin
export PATH

EOF

mkdir bin

curl -s "https://get.sdkman.io" | bash

echo "Preparation Finished"