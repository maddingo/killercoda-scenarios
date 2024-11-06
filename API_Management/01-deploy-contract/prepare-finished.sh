#!/bin/bash
set +x
while [ ! -f /tmp/DONE ]; do sleep 1; done
echo Welcome