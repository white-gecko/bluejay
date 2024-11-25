#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
curl -L https://github.com/quarto-dev/quarto-cli/releases/download/v1.6.32/quarto-1.6.32-linux-amd64.tar.gz > /tmp/quarto.tar.gz
mkdir /usr/share/quarto
tar -C /usr/share/quarto --strip-components=1 -xvzf /tmp/quarto.tar.gz
ln -s /usr/share/quarto/bin/quarto /usr/bin/quarto
