#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
# This could also be configured on runtime with:
# xdg-settings set default-web-browser io.gitlab.librewolf-community.desktop
echo "Set LibreWolf as default browser"
CANID="io.gitlab.librewolf-community"
MIMEAPPS="/usr/share/applications/mimeapps.list"
GNOME_MIMEAPPS="/usr/share/applications/gnome-mimeapps.list"

for mimefile in ${MIMEAPPS} ${GNOME_MIMEAPPS}
do
  for mime in "text/html" "application/xhtml+xml" "x-scheme-handler/http" "x-scheme-handler/https"
  do
    if grep "^${mime}=.*\$" ${mimefile}
    then
      sed -i "s|^${mime}=.*$|${mime}=${CANID}.desktop|g" ${mimefile}
    else
      echo "${mime}=${CANID}.desktop" >> ${mimefile}
    fi
  done
done
