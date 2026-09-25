#!/usr/bin/env python3
"""Reproducible first-pass analysis of the original DOS S8.EXE.

This intentionally avoids pretending to be a full decompiler. It records the
MZ header, load-module geometry, surviving C++ symbol strings, selected
application function offsets established by control flow, and the LPT I/O
instructions in the application code region.
"""
from pathlib import Path
import hashlib, re, struct

ROOT = Path(__file__).resolve().parents[1]
EXE = ROOT / "reference" / "S8.EXE"
OUT = ROOT / "reverse-engineering"

b = EXE.read_bytes()
magic, cblp, cp, crlc, cparhdr, minalloc, maxalloc, ss, sp, csum, ip, cs, lfarlc, ovno = struct.unpack_from('<14H', b, 0)
if magic != 0x5A4D:
    raise SystemExit('Not an MZ executable')

image_offset = cparhdr * 16
sha = hashlib.sha256(b).hexdigest()

print(f"file: {EXE}")
print(f"size: {len(b)} bytes")
print(f"sha256: {sha}")
print(f"header: 0x{image_offset:x} bytes")
print(f"entry: CS:IP={cs:04x}:{ip:04x}")
print(f"stack: SS:SP={ss:04x}:{sp:04x}")

symbols = [
    b'@c_break$qv', b'@Put82$qzc', b'@Get82$qv',
    b'@PutBytes$qnzcii', b'@GetBytes$qnzci', b'@SendFile$qnzc', b'_main'
]
print('\nSurviving symbols:')
for s in symbols:
    pos = b.find(s)
    print(f"  {s.decode()}: file offset 0x{pos:x}" if pos >= 0 else f"  {s.decode()}: not found")

functions = {
    0x2d9d: 'Put82',
    0x2e2b: 'Get82',
    0x2f03: 'PutBytes',
    0x2f7f: 'GetBytes',
    0x2fa4: 'SendFile',
    0x3331: 'main',
}
print('\nVerified application code offsets:')
for off, name in functions.items():
    print(f"  0x{off:04x} {name}")

# These are the direct LPT instructions in the reconstructed parallel path.
needles = [
    bytes.fromhex('b002ee'),  # mov al,2 / out dx,al
    bytes.fromhex('b001ee'),  # mov al,1 / out dx,al
    bytes.fromhex('b003ee'),  # mov al,3 / out dx,al
    bytes.fromhex('a91000'),  # test ax,0010
    bytes.fromhex('a92000'),  # test ax,0020
]
print('\nSelected protocol instruction occurrences:')
for needle in needles:
    offs = []
    start = image_offset + 0x2d9d
    while True:
        p = b.find(needle, start)
        if p < image_offset + 0x2d9d or p > image_offset + 0x2f03:
            break
        offs.append(p - image_offset)
        start = p + 1
    print(f"  {needle.hex()}: {', '.join(f'0x{x:04x}' for x in offs)}")

OUT.joinpath('S8.EXE.sha256.generated').write_text(sha + '\n')
