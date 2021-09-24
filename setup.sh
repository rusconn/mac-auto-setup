#!/bin/sh

cd "$(dirname "$0")" || exit

echo "start auto setup"

echo "xcode command line tools ..."
xcode-select --install

echo "homebrew ..."
homebrew/install.sh

echo "vscode ..."
vscode/install.sh

echo "done"
