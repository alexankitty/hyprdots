#!/usr/bin/env bash
# Dependencies: tesseract imagemagick wl-clipboard hyprshot

die() {
  notify-send "$1"
  exit 1
}
cleanup() {
  [[ -n $1 ]] && rm -r "$1"
}

SCR_IMG=$(mktemp -d) || die "failed to create tmpdir"

# shellcheck disable=SC2064
trap "cleanup '$SCR_IMG'" EXIT

grimblast --freeze save area "$SCR_IMG/scr.png"
sleep 1
mogrify -modulate 100,0 -resize 400% "$SCR_IMG/scr.png" || die "failed to convert image"
tesseract "$SCR_IMG/scr.png" "$SCR_IMG/scr" &>/dev/null || die "failed to extract text"
wl-copy <"$SCR_IMG/scr.txt" || die "failed to copy text to clipboard"
notify-send "Text extracted from image"
exit
