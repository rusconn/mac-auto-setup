#!/bin/bash

cd "$(dirname "$0")" || exit

brew bundle dump --force
