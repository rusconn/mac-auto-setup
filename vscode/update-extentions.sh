#!/bin/sh

cd "$(dirname "$0")" || exit

code --list-extensions > ./extensions
