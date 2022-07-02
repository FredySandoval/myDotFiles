#!/usr/bin/bash
# from https://starship.rs
curl -sS https://starship.rs/install.sh | sh

ensure_containing_dir_exists() {
  local CONTAINING_DIR
  CONTAINING_DIR="$(dirname "$1")"
  if [ ! -d "$CONTAINING_DIR" ]; then
    echo " >> Creating directory $CONTAINING_DIR"
    mkdir -p "$CONTAINING_DIR"
  fi
}

CONF_FILE=$HOME/.config/fish/config.fish
ensure_containing_dir_exists "$CONF_FILE"
echo "Installing for Fish. Appending the following to $CONF_FILE:"
echo ""
echo '  # Starfish theme'
echo 'starship init fish | source'

echo '# Starfish.rs fish theme' >>$CONF_FILE
echo 'starship init fish | source' >>$CONF_FILE

echo "more info at https://starship.rs"
