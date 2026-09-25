#!/bin/sh
set -eu
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
EXE="$ROOT/reference/S8.EXE"
OUT="$ROOT/reverse-engineering/S8.full.disasm.txt"
TMP="$ROOT/reverse-engineering/.S8.load.bin"
python3 - "$EXE" "$TMP" <<'PY'
import sys
p,o=sys.argv[1:]
b=open(p,'rb').read()
if b[:2] != b'MZ': raise SystemExit('not an MZ executable')
paragraphs=int.from_bytes(b[8:10],'little')
off=paragraphs*16
open(o,'wb').write(b[off:])
print(f'load offset: 0x{off:x}')
PY
objdump -D -b binary -m i8086 "$TMP" > "$OUT"
rm -f "$TMP"
printf 'Wrote %s\n' "$OUT"
