#!/bin/sh

cd "$(dirname "$0")" || exit

echo "start auto setup"

echo "xcode command line tools ..."
xcode-select --install

if [ "$(arch)" = "arm64" ]; then
  echo "rosetta ..."
  /usr/sbin/softwareupdate --install-rosetta --agree-to-license
fi

echo "homebrew ..."
homebrew/install.sh

echo "vscode ..."
vscode/install.sh

echo "done"
