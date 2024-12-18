#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo 'This is an example shell script'
IMAGE_DATE=$(date +%Y%m%d.%H)
MAJOR_RELEASE_VERSION=$(grep -oP '[0-9]*' /etc/fedora-release)
sed -i "s,^NAME=.*,NAME=\"Bluejay\"," /usr/lib/os-release
sed -i "s,^ID=.*,ID=bluejay," /usr/lib/os-release
sed -i "s,^DEFAULT_HOSTNAME=.*,DEFAULT_HOSTNAME=\"bluejay\"," /usr/lib/os-release
sed -i "s,^VARIANT_ID=.*,VARIANT_ID=bluejay-dx," /usr/lib/os-release
sed -i "s,^HOME_URL=.*,HOME_URL=\"https://github.com/white-gecko/bluejay\"," /usr/lib/os-release
sed -i "s,^DOCUMENTATION_URL=.*,DOCUMENTATION_URL=\"https://docs.projectbluefin.io;https://blue-build.org/\"," /usr/lib/os-release
sed -i "s,^SUPPORT_URL=.*,SUPPORT_URL=\"none\"," /usr/lib/os-release
sed -i "s,^BUG_REPORT_URL=.*,SUPPORT_URL=\"none\"," /usr/lib/os-release
sed -i "s,^PRETTY_NAME=.*,PRETTY_NAME=\"Bluejay Linux ${MAJOR_RELEASE_VERSION}.${IMAGE_DATE} (FROM Bluefin-dx)\"," /usr/lib/os-release
