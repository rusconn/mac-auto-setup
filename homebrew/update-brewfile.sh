#!/bin/bash

cd "$(dirname "$0")" || exit

mv Brewfile _Brewfile
brew bundle dump --force --no-lock
