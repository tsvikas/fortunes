#!/bin/sh
# Make the .dat index beside each fortune file in this directory.
# The index format differs between fortune (Homebrew) and fortune-mod (Debian, Fedora), so it
# uses the strfile that sits beside the fortune on PATH, else the strfile on PATH (README.md).
# Safe to re-run: it rewrites every index.
#
# Exit status: 0 done, 2 no fortune or strfile, 3 strfile failed.
set -eu
cd "$(dirname "$0")"

fortune=$(command -v fortune) || { echo "index.sh: no fortune on PATH" >&2; exit 2; }
strfile=$(dirname "$fortune")/strfile   # not resolved: brew's bin/ holds links to both
if [ ! -x "$strfile" ]; then
    strfile=$(command -v strfile) || { echo "index.sh: no strfile beside $fortune or on PATH" >&2; exit 2; }
fi

for f in *; do
    case $f in *.*) continue ;; esac   # README.md, this script, the .dat files
    [ -f "$f" ] || continue
    "$strfile" -s "$f" || { echo "index.sh: $strfile failed on $f" >&2; exit 3; }
done
