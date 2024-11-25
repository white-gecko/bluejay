#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo "Add the cups-pdf printer"
echo "This might breakt at some time: https://github.com/OpenPrinting/cups-sharing/issues/4"
lpadmin -p Cups-PDF -D "Print to a PDF file" -v cups-pdf:/ -m CUPS-PDF_noopt.ppd -E
