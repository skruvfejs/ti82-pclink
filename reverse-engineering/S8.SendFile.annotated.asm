
/mnt/data/rebuild/ti82-pclink/reference/S8.load.bin:     file format binary


Disassembly of section .data:

000039f4 <.data+0x39f4>:
    39f4:	55                   	push   %bp
    39f5:	8b ec                	mov    %sp,%bp
    39f7:	1e                   	push   %ds
    39f8:	b8 a4 04             	mov    $0x4a4,%ax
    39fb:	8e d8                	mov    %ax,%ds
    39fd:	ff 76 08             	push   0x8(%bp)
    3a00:	ff 76 06             	push   0x6(%bp)
    3a03:	1e                   	push   %ds
    3a04:	b8 8e 7d             	mov    $0x7d8e,%ax
    3a07:	50                   	push   %ax
    3a08:	9a 17 2d 00 00       	lcall  $0x0,$0x2d17
    3a0d:	83 c4 08             	add    $0x8,%sp
    3a10:	1e                   	push   %ds
    3a11:	b8 9d 7d             	mov    $0x7d9d,%ax
    3a14:	50                   	push   %ax
    3a15:	ff 76 08             	push   0x8(%bp)
    3a18:	ff 76 06             	push   0x6(%bp)
    3a1b:	9a 93 24 00 00       	lcall  $0x0,$0x2493
    3a20:	83 c4 08             	add    $0x8,%sp
    3a23:	89 16 12 7d          	mov    %dx,0x7d12
    3a27:	a3 10 7d             	mov    %ax,0x7d10
    3a2a:	0b c2                	or     %dx,%ax
    3a2c:	75 0d                	jne    0x3a3b
    3a2e:	1e                   	push   %ds
    3a2f:	b8 a0 7d             	mov    $0x7da0,%ax
    3a32:	50                   	push   %ax
    3a33:	9a 17 2d 00 00       	lcall  $0x0,$0x2d17
    3a38:	e9 41 03             	jmp    0x3d7c
    3a3b:	ff 36 12 7d          	push   0x7d12
    3a3f:	ff 36 10 7d          	push   0x7d10
    3a43:	b8 01 00             	mov    $0x1,%ax
    3a46:	50                   	push   %ax
    3a47:	b8 05 00             	mov    $0x5,%ax
    3a4a:	50                   	push   %ax
    3a4b:	1e                   	push   %ds
    3a4c:	b8 04 7d             	mov    $0x7d04,%ax
    3a4f:	50                   	push   %ax
    3a50:	9a ca 25 00 00       	lcall  $0x0,$0x25ca
    3a55:	83 c4 0c             	add    $0xc,%sp
    3a58:	b8 05 00             	mov    $0x5,%ax
    3a5b:	50                   	push   %ax
    3a5c:	1e                   	push   %ds
    3a5d:	b8 b1 7d             	mov    $0x7db1,%ax
    3a60:	50                   	push   %ax
    3a61:	1e                   	push   %ds
    3a62:	b8 04 7d             	mov    $0x7d04,%ax
    3a65:	50                   	push   %ax
    3a66:	9a 7d 34 00 00       	lcall  $0x0,$0x347d
    3a6b:	83 c4 0a             	add    $0xa,%sp
    3a6e:	0b c0                	or     %ax,%ax
    3a70:	74 25                	je     0x3a97
    3a72:	ff 36 12 7d          	push   0x7d12
    3a76:	ff 36 10 7d          	push   0x7d10
    3a7a:	9a 3f 20 00 00       	lcall  $0x0,$0x203f
    3a7f:	59                   	pop    %cx
    3a80:	59                   	pop    %cx
    3a81:	ff 76 08             	push   0x8(%bp)
    3a84:	ff 76 06             	push   0x6(%bp)
    3a87:	1e                   	push   %ds
    3a88:	b8 b7 7d             	mov    $0x7db7,%ax
    3a8b:	50                   	push   %ax
    3a8c:	9a 17 2d 00 00       	lcall  $0x0,$0x2d17
    3a91:	83 c4 08             	add    $0x8,%sp
    3a94:	e9 e7 02             	jmp    0x3d7e
    3a97:	ff 36 12 7d          	push   0x7d12
    3a9b:	ff 36 10 7d          	push   0x7d10
    3a9f:	b8 01 00             	mov    $0x1,%ax
    3aa2:	50                   	push   %ax
    3aa3:	b8 01 00             	mov    $0x1,%ax
    3aa6:	50                   	push   %ax
    3aa7:	1e                   	push   %ds
    3aa8:	b8 04 7d             	mov    $0x7d04,%ax
    3aab:	50                   	push   %ax
    3aac:	9a ca 25 00 00       	lcall  $0x0,$0x25ca
    3ab1:	83 c4 0c             	add    $0xc,%sp
    3ab4:	80 3e 04 7d 35       	cmpb   $0x35,0x7d04
    3ab9:	75 07                	jne    0x3ac2
    3abb:	c6 06 0e 7d 05       	movb   $0x5,0x7d0e
    3ac0:	eb 13                	jmp    0x3ad5
    3ac2:	80 3e 04 7d 33       	cmpb   $0x33,0x7d04
    3ac7:	75 07                	jne    0x3ad0
    3ac9:	c6 06 0e 7d 03       	movb   $0x3,0x7d0e
    3ace:	eb 05                	jmp    0x3ad5
    3ad0:	c6 06 0e 7d 02       	movb   $0x2,0x7d0e
    3ad5:	b8 02 00             	mov    $0x2,%ax
    3ad8:	50                   	push   %ax
    3ad9:	33 c0                	xor    %ax,%ax
    3adb:	33 d2                	xor    %dx,%dx
    3add:	50                   	push   %ax
    3ade:	52                   	push   %dx
    3adf:	ff 36 12 7d          	push   0x7d12
    3ae3:	ff 36 10 7d          	push   0x7d10
    3ae7:	9a e8 26 00 00       	lcall  $0x0,$0x26e8
    3aec:	83 c4 0a             	add    $0xa,%sp
    3aef:	ff 36 12 7d          	push   0x7d12
    3af3:	ff 36 10 7d          	push   0x7d10
    3af7:	9a 6f 27 00 00       	lcall  $0x0,$0x276f
    3afc:	59                   	pop    %cx
    3afd:	59                   	pop    %cx
    3afe:	05 fe ff             	add    $0xfffe,%ax
    3b01:	83 d2 ff             	adc    $0xffff,%dx
    3b04:	89 16 4d 7d          	mov    %dx,0x7d4d
    3b08:	a3 4b 7d             	mov    %ax,0x7d4b
    3b0b:	33 c0                	xor    %ax,%ax
    3b0d:	50                   	push   %ax
    3b0e:	33 c0                	xor    %ax,%ax
    3b10:	ba 37 00             	mov    $0x37,%dx
    3b13:	50                   	push   %ax
    3b14:	52                   	push   %dx
    3b15:	ff 36 12 7d          	push   0x7d12
    3b19:	ff 36 10 7d          	push   0x7d10
    3b1d:	9a e8 26 00 00       	lcall  $0x0,$0x26e8
    3b22:	83 c4 0a             	add    $0xa,%sp
    3b25:	e9 18 02             	jmp    0x3d40
    3b28:	ff 36 12 7d          	push   0x7d12
    3b2c:	ff 36 10 7d          	push   0x7d10
    3b30:	b8 02 00             	mov    $0x2,%ax
    3b33:	50                   	push   %ax
    3b34:	b8 01 00             	mov    $0x1,%ax
    3b37:	50                   	push   %ax
    3b38:	1e                   	push   %ds
    3b39:	b8 04 7d             	mov    $0x7d04,%ax
    3b3c:	50                   	push   %ax
    3b3d:	9a ca 25 00 00       	lcall  $0x0,$0x25ca
    3b42:	83 c4 0c             	add    $0xc,%sp
    3b45:	a0 04 7d             	mov    0x7d04,%al
    3b48:	b4 00                	mov    $0x0,%ah
    3b4a:	8a 16 05 7d          	mov    0x7d05,%dl
    3b4e:	b6 00                	mov    $0x0,%dh
    3b50:	b1 08                	mov    $0x8,%cl
    3b52:	d3 e2                	shl    %cl,%dx
    3b54:	0b c2                	or     %dx,%ax
    3b56:	a3 14 7d             	mov    %ax,0x7d14
    3b59:	b8 02 00             	mov    $0x2,%ax
    3b5c:	50                   	push   %ax
    3b5d:	1e                   	push   %ds
    3b5e:	b8 04 7d             	mov    $0x7d04,%ax
    3b61:	50                   	push   %ax
    3b62:	1e                   	push   %ds
    3b63:	b8 04 00             	mov    $0x4,%ax
    3b66:	50                   	push   %ax
    3b67:	9a c8 2a 00 00       	lcall  $0x0,$0x2ac8
    3b6c:	83 c4 0a             	add    $0xa,%sp
    3b6f:	ff 36 12 7d          	push   0x7d12
    3b73:	ff 36 10 7d          	push   0x7d10
    3b77:	ff 36 14 7d          	push   0x7d14
    3b7b:	b8 01 00             	mov    $0x1,%ax
    3b7e:	50                   	push   %ax
    3b7f:	1e                   	push   %ds
    3b80:	b8 06 00             	mov    $0x6,%ax
    3b83:	50                   	push   %ax
    3b84:	9a ca 25 00 00       	lcall  $0x0,$0x25ca
    3b89:	83 c4 0c             	add    $0xc,%sp
    3b8c:	80 3e 0e 7d 02       	cmpb   $0x2,0x7d0e
    3b91:	75 07                	jne    0x3b9a
    3b93:	80 3e 08 00 0f       	cmpb   $0xf,0x8
    3b98:	74 1c                	je     0x3bb6
    3b9a:	80 3e 0e 7d 03       	cmpb   $0x3,0x7d0e
    3b9f:	75 07                	jne    0x3ba8
    3ba1:	80 3e 08 00 0f       	cmpb   $0xf,0x8
    3ba6:	74 0e                	je     0x3bb6
    3ba8:	80 3e 0e 7d 05       	cmpb   $0x5,0x7d0e
    3bad:	75 0d                	jne    0x3bbc
    3baf:	80 3e 08 00 1d       	cmpb   $0x1d,0x8
    3bb4:	75 06                	jne    0x3bbc
    3bb6:	c7 06 1c 7d 03 00    	movw   $0x3,0x7d1c
    3bbc:	c7 06 1e 7d 00 00    	movw   $0x0,0x7d1e
    3bc2:	c7 06 18 7d 02 00    	movw   $0x2,0x7d18
    3bc8:	eb 12                	jmp    0x3bdc
    3bca:	8b 1e 18 7d          	mov    0x7d18,%bx
    3bce:	8a 87 04 00          	mov    0x4(%bx),%al
    3bd2:	b4 00                	mov    $0x0,%ah
    3bd4:	01 06 1e 7d          	add    %ax,0x7d1e
    3bd8:	ff 06 18 7d          	incw   0x7d18
    3bdc:	a1 14 7d             	mov    0x7d14,%ax
    3bdf:	05 02 00             	add    $0x2,%ax
    3be2:	3b 06 18 7d          	cmp    0x7d18,%ax
    3be6:	7f e2                	jg     0x3bca
    3be8:	8b 1e 18 7d          	mov    0x7d18,%bx
    3bec:	a0 1e 7d             	mov    0x7d1e,%al
    3bef:	24 ff                	and    $0xff,%al
    3bf1:	88 87 04 00          	mov    %al,0x4(%bx)
    3bf5:	a1 1e 7d             	mov    0x7d1e,%ax
    3bf8:	b1 08                	mov    $0x8,%cl
    3bfa:	d3 e8                	shr    %cl,%ax
    3bfc:	8b 1e 18 7d          	mov    0x7d18,%bx
    3c00:	88 87 05 00          	mov    %al,0x5(%bx)
    3c04:	a0 0e 7d             	mov    0x7d0e,%al
    3c07:	50                   	push   %ax
    3c08:	0e                   	push   %cs
    3c09:	e8 e1 fb             	call   0x37ed
    3c0c:	59                   	pop    %cx
    3c0d:	b0 06                	mov    $0x6,%al
    3c0f:	50                   	push   %ax
    3c10:	0e                   	push   %cs
    3c11:	e8 d9 fb             	call   0x37ed
    3c14:	59                   	pop    %cx
    3c15:	33 c0                	xor    %ax,%ax
    3c17:	50                   	push   %ax
    3c18:	a1 14 7d             	mov    0x7d14,%ax
    3c1b:	05 04 00             	add    $0x4,%ax
    3c1e:	50                   	push   %ax
    3c1f:	1e                   	push   %ds
    3c20:	b8 04 00             	mov    $0x4,%ax
    3c23:	50                   	push   %ax
    3c24:	0e                   	push   %cs
    3c25:	e8 2b fd             	call   0x3953
    3c28:	83 c4 08             	add    $0x8,%sp
    3c2b:	b8 08 00             	mov    $0x8,%ax
    3c2e:	50                   	push   %ax
    3c2f:	1e                   	push   %ds
    3c30:	b8 04 7d             	mov    $0x7d04,%ax
    3c33:	50                   	push   %ax
    3c34:	0e                   	push   %cs
    3c35:	e8 97 fd             	call   0x39cf
    3c38:	83 c4 06             	add    $0x6,%sp
    3c3b:	a0 0e 7d             	mov    0x7d0e,%al
    3c3e:	50                   	push   %ax
    3c3f:	0e                   	push   %cs
    3c40:	e8 aa fb             	call   0x37ed
    3c43:	59                   	pop    %cx
    3c44:	b0 56                	mov    $0x56,%al
    3c46:	50                   	push   %ax
    3c47:	0e                   	push   %cs
    3c48:	e8 a2 fb             	call   0x37ed
    3c4b:	59                   	pop    %cx
    3c4c:	a0 0a 7d             	mov    0x7d0a,%al
    3c4f:	50                   	push   %ax
    3c50:	0e                   	push   %cs
    3c51:	e8 99 fb             	call   0x37ed
    3c54:	59                   	pop    %cx
    3c55:	a0 0b 7d             	mov    0x7d0b,%al
    3c58:	50                   	push   %ax
    3c59:	0e                   	push   %cs
    3c5a:	e8 90 fb             	call   0x37ed
    3c5d:	59                   	pop    %cx
    3c5e:	c7 06 16 7d 00 00    	movw   $0x0,0x7d16
    3c64:	e9 cd 00             	jmp    0x3d34
    3c67:	ff 36 12 7d          	push   0x7d12
    3c6b:	ff 36 10 7d          	push   0x7d10
    3c6f:	b8 01 00             	mov    $0x1,%ax
    3c72:	50                   	push   %ax
    3c73:	b8 02 00             	mov    $0x2,%ax
    3c76:	50                   	push   %ax
    3c77:	1e                   	push   %ds
    3c78:	b8 14 7d             	mov    $0x7d14,%ax
    3c7b:	50                   	push   %ax
    3c7c:	9a ca 25 00 00       	lcall  $0x0,$0x25ca
    3c81:	83 c4 0c             	add    $0xc,%sp
    3c84:	a0 14 7d             	mov    0x7d14,%al
    3c87:	24 ff                	and    $0xff,%al
    3c89:	a2 04 00             	mov    %al,0x4
    3c8c:	a1 14 7d             	mov    0x7d14,%ax
    3c8f:	b1 08                	mov    $0x8,%cl
    3c91:	d3 f8                	sar    %cl,%ax
    3c93:	a2 05 00             	mov    %al,0x5
    3c96:	ff 36 12 7d          	push   0x7d12
    3c9a:	ff 36 10 7d          	push   0x7d10
    3c9e:	ff 36 14 7d          	push   0x7d14
    3ca2:	b8 01 00             	mov    $0x1,%ax
    3ca5:	50                   	push   %ax
    3ca6:	1e                   	push   %ds
    3ca7:	b8 06 00             	mov    $0x6,%ax
    3caa:	50                   	push   %ax
    3cab:	9a ca 25 00 00       	lcall  $0x0,$0x25ca
    3cb0:	83 c4 0c             	add    $0xc,%sp
    3cb3:	c7 06 1e 7d 00 00    	movw   $0x0,0x7d1e
    3cb9:	c7 06 18 7d 00 00    	movw   $0x0,0x7d18
    3cbf:	eb 12                	jmp    0x3cd3
    3cc1:	8b 1e 18 7d          	mov    0x7d18,%bx
    3cc5:	8a 87 06 00          	mov    0x6(%bx),%al
    3cc9:	b4 00                	mov    $0x0,%ah
    3ccb:	01 06 1e 7d          	add    %ax,0x7d1e
    3ccf:	ff 06 18 7d          	incw   0x7d18
    3cd3:	a1 18 7d             	mov    0x7d18,%ax
    3cd6:	3b 06 14 7d          	cmp    0x7d14,%ax
    3cda:	7c e5                	jl     0x3cc1
    3cdc:	8b 1e 18 7d          	mov    0x7d18,%bx
    3ce0:	a0 1e 7d             	mov    0x7d1e,%al
    3ce3:	24 ff                	and    $0xff,%al
    3ce5:	88 87 06 00          	mov    %al,0x6(%bx)
    3ce9:	a1 1e 7d             	mov    0x7d1e,%ax
    3cec:	b1 08                	mov    $0x8,%cl
    3cee:	d3 e8                	shr    %cl,%ax
    3cf0:	8b 1e 18 7d          	mov    0x7d18,%bx
    3cf4:	88 87 07 00          	mov    %al,0x7(%bx)
    3cf8:	a0 0e 7d             	mov    0x7d0e,%al
    3cfb:	50                   	push   %ax
    3cfc:	0e                   	push   %cs
    3cfd:	e8 ed fa             	call   0x37ed
    3d00:	59                   	pop    %cx
    3d01:	b0 15                	mov    $0x15,%al
    3d03:	50                   	push   %ax
    3d04:	0e                   	push   %cs
    3d05:	e8 e5 fa             	call   0x37ed
    3d08:	59                   	pop    %cx
    3d09:	b8 01 00             	mov    $0x1,%ax
    3d0c:	50                   	push   %ax
    3d0d:	a1 18 7d             	mov    0x7d18,%ax
    3d10:	05 04 00             	add    $0x4,%ax
    3d13:	50                   	push   %ax
    3d14:	1e                   	push   %ds
    3d15:	b8 04 00             	mov    $0x4,%ax
    3d18:	50                   	push   %ax
    3d19:	0e                   	push   %cs
    3d1a:	e8 36 fc             	call   0x3953
    3d1d:	83 c4 08             	add    $0x8,%sp
    3d20:	b8 04 00             	mov    $0x4,%ax
    3d23:	50                   	push   %ax
    3d24:	1e                   	push   %ds
    3d25:	b8 04 7d             	mov    $0x7d04,%ax
    3d28:	50                   	push   %ax
    3d29:	0e                   	push   %cs
    3d2a:	e8 a2 fc             	call   0x39cf
    3d2d:	83 c4 06             	add    $0x6,%sp
    3d30:	ff 06 16 7d          	incw   0x7d16
    3d34:	a1 16 7d             	mov    0x7d16,%ax
    3d37:	3b 06 1c 7d          	cmp    0x7d1c,%ax
    3d3b:	7d 03                	jge    0x3d40
    3d3d:	e9 27 ff             	jmp    0x3c67
    3d40:	ff 36 12 7d          	push   0x7d12
    3d44:	ff 36 10 7d          	push   0x7d10
    3d48:	9a 6f 27 00 00       	lcall  $0x0,$0x276f
    3d4d:	59                   	pop    %cx
    3d4e:	59                   	pop    %cx
    3d4f:	3b 16 4d 7d          	cmp    0x7d4d,%dx
    3d53:	7d 03                	jge    0x3d58
    3d55:	e9 d0 fd             	jmp    0x3b28
    3d58:	75 09                	jne    0x3d63
    3d5a:	3b 06 4b 7d          	cmp    0x7d4b,%ax
    3d5e:	73 03                	jae    0x3d63
    3d60:	e9 c5 fd             	jmp    0x3b28
    3d63:	1e                   	push   %ds
    3d64:	b8 ce 7d             	mov    $0x7dce,%ax
    3d67:	50                   	push   %ax
    3d68:	9a 17 2d 00 00       	lcall  $0x0,$0x2d17
    3d6d:	59                   	pop    %cx
    3d6e:	59                   	pop    %cx
    3d6f:	ff 36 12 7d          	push   0x7d12
    3d73:	ff 36 10 7d          	push   0x7d10
    3d77:	9a 3f 20 00 00       	lcall  $0x0,$0x203f
    3d7c:	59                   	pop    %cx
    3d7d:	59                   	pop    %cx
    3d7e:	1f                   	pop    %ds
    3d7f:	5d                   	pop    %bp
    3d80:	cb                   	lret
