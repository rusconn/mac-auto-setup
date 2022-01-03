#!/bin/sh

cd "$(dirname "$0")" || exit

readonly VSCODE_SETTINGS_DIR="$HOME/Library/Application Support/Code/User"
readonly VSCODE=/opt/homebrew/bin/code

echo "make vscode setting symlinks ..."
ln -snfv "$(pwd)/settings.json" "$VSCODE_SETTINGS_DIR/settings.json"
ln -snfv "$(pwd)/keybindings.json" "$VSCODE_SETTINGS_DIR/keybindings.json"

echo "install vscode extensions ..."
while IFS= read -r extension
do
  $VSCODE --install-extension "$extension"
done < extensions
