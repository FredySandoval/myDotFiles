#!/usr/bin/bash
URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip"

INSTALL_DIR="$HOME/.local/share/fonts"
# Check Dependencies

echo "Checking Dependencies..."
echo -n "Checking availability of curl..."

if hash curl 2>/dev/null; then
    echo "OK"
else
    MISSING_DEPENDENCY="curl"
    SHOULD_EXIT="true"
fi

echo -n "Checking availability of unzip... "
if hash unzip 2>/dev/null; then
  echo "OK!"
else
  MISSING_DEPENDENCY="unzip"
  SHOULD_EXIT="true"
fi

if [ "$SHOULD_EXIT" = "true" ]; then
    echo "Please install $MISSING_DEPENDENCY and try again."
    exit 1
fi

DOWNLOAD_DIR=$(mktemp -d)
echo "Downloading $URL..."

mkdir -p "$INSTALL_DIR" &>/dev/null

if ! curl --progress-bar --fail -L "$URL" -o "$DOWNLOAD_DIR/$FILENAME.zip"; then
  echo "Download failed.  Check that the release/filename are correct."
  exit 1
fi

unzip -q "$DOWNLOAD_DIR/$FILENAME.zip" -d "$INSTALL_DIR"

fc-cache -fv
echo "---------------------------------"
echo ""
echo ""
echo "  font is available by the name"
echo "  'CaskaydiaCove Nerd Font"
echo ""
echo ""
echo "---------------------------------"