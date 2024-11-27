# Ensure neo vim is set as EDITOR if it isn't already set

if [ -z "$VISUAL" ]; then
  export VISUAL="/usr/bin/nvim"
fi
export EDITOR=$VISUAL
