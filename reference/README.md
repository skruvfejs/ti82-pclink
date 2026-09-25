# Reference material

This directory contains the historical material used as the basis for the
reverse-engineering phase.

## S8.EXE

`S8.EXE` is the original Tran8x Send8 executable supplied for this project.
It is intentionally kept in the Git repository at the user's request so the
analysis remains tied to the exact binary that was tested.

Do not modify the file in place. If a different build is ever analyzed, add it
as a separately identified reference and record its hash.

## LC85.C

`LC85.C` is the supplied source for the small TI-8x header/link test utility.
It is especially useful for comparing the low-level parallel handshake with
S8's `Put82`/`Get82` implementation.
