#!/bin/sh

cd "$(dirname "$0")" || exit

mv extensions _extensions
code --list-extensions > ./extensions
