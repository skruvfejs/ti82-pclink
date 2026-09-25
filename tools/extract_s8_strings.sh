#!/bin/sh
set -eu
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
strings -a -t x "$ROOT/reference/S8.EXE" > "$ROOT/reverse-engineering/S8.strings.txt"
printf 'Wrote %s\n' "$ROOT/reverse-engineering/S8.strings.txt"
