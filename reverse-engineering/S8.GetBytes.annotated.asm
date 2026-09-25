; S8.EXE - GetBytes @ 0x39CF
; Reference SHA-256: 7d45c7e47783b73047ccf416fffbf7e32087b00f5ab9e76fb39f84f4e811c05c
;
; Arguments:
;   [BP+6]  far destination pointer
;   [BP+0A] byte count
;
; For each requested byte:
;   AL = Get82()
;   store AL at ES:BX
;   increment the far pointer
;
; No checksum or response interpretation occurs here. GetBytes is a pure
; byte-collection helper; SendFile decides how the collected bytes are used.
;
39cf: 55                    push bp
39d0: 8b ec                 mov  bp,sp
39d2: 56                    push si
39d3: 1e                    push ds
39d4: b8 a4 04              mov  ax,04a4h
39d7: 8e d8                 mov  ds,ax
39d9: 33 f6                 xor  si,si
39db: eb 0e                 jmp 39ebh
39dd: 0e                    push cs
39de: e8 9a fe              call 387bh       ; Get82()
39e1: c4 5e 06              les  bx,[bp+06h]
39e4: 26 88 07              mov  es:[bx],al
39e7: ff 46 06              inc  word ptr [bp+06h]
39ea: 46                    inc  si
39eb: 3b 76 0a              cmp  si,[bp+0ah]
39ee: 7c ed                 jl   39ddh
39f0: 1f                    pop  ds
39f1: 5e                    pop  si
39f2: 5d                    pop  bp
39f3: cb                    retf
