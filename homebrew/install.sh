#!/bin/sh

cd "$(dirname "$0")" || exit

readonly BREW=/opt/homebrew/bin/brew

echo "install Homebrew ..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "run brew bundle ..."
$BREW bundle
