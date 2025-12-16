#!/bin/bash

cat >>.bashrc<<EOF 

PATH=$PATH:$HOME/bin
export PATH

EOF

mkdir bin
apt-get install -y zip

curl -s "https://get.sdkman.io" | bash

echo "Preparation Finished"