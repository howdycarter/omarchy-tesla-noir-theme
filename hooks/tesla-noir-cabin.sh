#!/bin/bash
# Apply Tesla Noir cabin extras (screensaver branding) when the theme is selected.
set -euo pipefail

theme="${1:-}"
brand="$HOME/.config/omarchy/branding"
default="$brand/screensaver.omarchy-default.txt"
tesla="$HOME/.config/omarchy/themes/tesla-noir/branding/screensaver.txt"

mkdir -p "$brand"
if [[ ! -f "$default" && -f "$brand/screensaver.txt" ]]; then
  cp "$brand/screensaver.txt" "$default"
fi

case "$theme" in
  tesla-noir)
    if [[ -f "$tesla" ]]; then
      cp "$tesla" "$brand/screensaver.txt"
    fi
    ;;
  *)
    if [[ -f "$default" && -f "$tesla" ]] && cmp -s "$brand/screensaver.txt" "$tesla"; then
      cp "$default" "$brand/screensaver.txt"
    fi
    ;;
esac
