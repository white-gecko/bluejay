#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo "Fix the pulsar path in the binary and desktop files"
sed -i 's|/opt/Pulsar|/usr/lib/opt/Pulsar|g' /usr/share/applications/pulsar.desktop
sed -i 's|/opt/Pulsar|/usr/lib/opt/Pulsar|g' /usr/bin/pulsar
