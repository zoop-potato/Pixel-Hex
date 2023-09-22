#!/bin/sh
echo -ne '\033c\033]0;Pixel Hex\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/hex game.x86_64" "$@"
