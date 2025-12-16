#!/bin/bash

cat >>.bashrc<<EOF 

PATH=$PATH:$HOME/bin
export PATH

EOF

mkdir bin

echo "Preparation Finished"