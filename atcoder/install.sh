#!/bin/sh

cd "$(dirname "$0")" || exit

readonly CARGO_ATCIDER_SETTINGS_DIR="$HOME/Library/Application Support"

echo "cargo-atcoder setting symlinks ..."
ln -snfv "$(pwd)/cargo-atcoder.toml" "$CARGO_ATCIDER_SETTINGS_DIR/cargo-atcoder.toml"
