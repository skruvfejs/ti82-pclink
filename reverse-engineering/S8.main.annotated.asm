
/mnt/data/rebuild/ti82-pclink/reference/S8.load.bin:     file format binary


Disassembly of section .data:

00003d81 <.data+0x3d81>:
    3d81:	55                   	push   %bp
    3d82:	8b ec                	mov    %sp,%bp
    3d84:	1e                   	push   %ds
    3d85:	b8 a4 04             	mov    $0x4a4,%ax
    3d88:	8e d8                	mov    %ax,%ds
    3d8a:	1e                   	push   %ds
    3d8b:	b8 d4 7d             	mov    $0x7dd4,%ax
    3d8e:	50                   	push   %ax
    3d8f:	9a 17 2d 00 00       	lcall  $0x0,$0x2d17
    3d94:	59                   	pop    %cx
    3d95:	59                   	pop    %cx
    3d96:	83 7e 06 02          	cmpw   $0x2,0x6(%bp)
    3d9a:	74 2c                	je     0x3dc8
    3d9c:	c4 5e 08             	les    0x8(%bp),%bx
    3d9f:	26 ff 77 02          	push   %es:0x2(%bx)
    3da3:	26 ff 37             	push   %es:(%bx)
    3da6:	1e                   	push   %ds
    3da7:	b8 0d 7e             	mov    $0x7e0d,%ax
    3daa:	50                   	push   %ax
    3dab:	9a 17 2d 00 00       	lcall  $0x0,$0x2d17
    3db0:	83 c4 08             	add    $0x8,%sp
    3db3:	1e                   	push   %ds
    3db4:	b8 25 7e             	mov    $0x7e25,%ax
    3db7:	50                   	push   %ax
    3db8:	9a 17 2d 00 00       	lcall  $0x0,$0x2d17
    3dbd:	59                   	pop    %cx
    3dbe:	59                   	pop    %cx
    3dbf:	33 c0                	xor    %ax,%ax
    3dc1:	50                   	push   %ax
    3dc2:	9a ef 03 00 00       	lcall  $0x0,$0x3ef
    3dc7:	59                   	pop    %cx
    3dc8:	b8 79 03             	mov    $0x379,%ax
    3dcb:	50                   	push   %ax
    3dcc:	b8 0e 00             	mov    $0xe,%ax
    3dcf:	50                   	push   %ax
    3dd0:	9a e5 02 00 00       	lcall  $0x0,$0x2e5
    3dd5:	59                   	pop    %cx
    3dd6:	59                   	pop    %cx
    3dd7:	b8 01 00             	mov    $0x1,%ax
    3dda:	50                   	push   %ax
    3ddb:	9a 6e 04 00 00       	lcall  $0x0,$0x46e
    3de0:	59                   	pop    %cx
    3de1:	1e                   	push   %ds
    3de2:	b8 67 7e             	mov    $0x7e67,%ax
    3de5:	50                   	push   %ax
    3de6:	9a 4c 2a 00 00       	lcall  $0x0,$0x2a4c
    3deb:	59                   	pop    %cx
    3dec:	59                   	pop    %cx
    3ded:	89 16 51 7d          	mov    %dx,0x7d51
    3df1:	a3 4f 7d             	mov    %ax,0x7d4f
    3df4:	a1 4f 7d             	mov    0x7d4f,%ax
    3df7:	0b 06 51 7d          	or     0x7d51,%ax
    3dfb:	75 39                	jne    0x3e36
    3dfd:	1e                   	push   %ds
    3dfe:	b8 6a 7e             	mov    $0x7e6a,%ax
    3e01:	50                   	push   %ax
    3e02:	9a 17 2d 00 00       	lcall  $0x0,$0x2d17
    3e07:	59                   	pop    %cx
    3e08:	59                   	pop    %cx
    3e09:	c7 06 00 00 78 03    	movw   $0x378,0x0
    3e0f:	a1 00 00             	mov    0x0,%ax
    3e12:	40                   	inc    %ax
    3e13:	a3 02 00             	mov    %ax,0x2
    3e16:	1e                   	push   %ds
    3e17:	b8 ac 7e             	mov    $0x7eac,%ax
    3e1a:	50                   	push   %ax
    3e1b:	9a 17 2d 00 00       	lcall  $0x0,$0x2d17
    3e20:	59                   	pop    %cx
    3e21:	59                   	pop    %cx
    3e22:	ff 36 00 00          	push   0x0
    3e26:	1e                   	push   %ds
    3e27:	b8 d6 7e             	mov    $0x7ed6,%ax
    3e2a:	50                   	push   %ax
    3e2b:	9a 17 2d 00 00       	lcall  $0x0,$0x2d17
    3e30:	83 c4 06             	add    $0x6,%sp
    3e33:	e9 b4 01             	jmp    0x3fea
    3e36:	ff 36 51 7d          	push   0x7d51
    3e3a:	ff 36 4f 7d          	push   0x7d4f
    3e3e:	9a 2d 35 00 00       	lcall  $0x0,$0x352d
    3e43:	59                   	pop    %cx
    3e44:	59                   	pop    %cx
    3e45:	52                   	push   %dx
    3e46:	50                   	push   %ax
    3e47:	ff 36 51 7d          	push   0x7d51
    3e4b:	ff 36 4f 7d          	push   0x7d4f
    3e4f:	9a 29 34 00 00       	lcall  $0x0,$0x3429
    3e54:	83 c4 08             	add    $0x8,%sp
    3e57:	1e                   	push   %ds
    3e58:	b8 09 7f             	mov    $0x7f09,%ax
    3e5b:	50                   	push   %ax
    3e5c:	ff 36 51 7d          	push   0x7d51
    3e60:	ff 36 4f 7d          	push   0x7d4f
    3e64:	9a b8 34 00 00       	lcall  $0x0,$0x34b8
    3e69:	83 c4 08             	add    $0x8,%sp
    3e6c:	0b c2                	or     %dx,%ax
    3e6e:	74 6d                	je     0x3edd
    3e70:	1e                   	push   %ds
    3e71:	b8 16 7d             	mov    $0x7d16,%ax
    3e74:	50                   	push   %ax
    3e75:	1e                   	push   %ds
    3e76:	b8 0b 7f             	mov    $0x7f0b,%ax
    3e79:	50                   	push   %ax
    3e7a:	ff 36 51 7d          	push   0x7d51
    3e7e:	ff 36 4f 7d          	push   0x7d4f
    3e82:	9a 90 33 00 00       	lcall  $0x0,$0x3390
    3e87:	83 c4 0c             	add    $0xc,%sp
    3e8a:	83 3e 16 7d 04       	cmpw   $0x4,0x7d16
    3e8f:	7e 20                	jle    0x3eb1
    3e91:	a1 16 7d             	mov    0x7d16,%ax
    3e94:	a3 00 00             	mov    %ax,0x0
    3e97:	a1 00 00             	mov    0x0,%ax
    3e9a:	40                   	inc    %ax
    3e9b:	a3 02 00             	mov    %ax,0x2
    3e9e:	ff 36 00 00          	push   0x0
    3ea2:	1e                   	push   %ds
    3ea3:	b8 11 7f             	mov    $0x7f11,%ax
    3ea6:	50                   	push   %ax
    3ea7:	9a 17 2d 00 00       	lcall  $0x0,$0x2d17
    3eac:	83 c4 06             	add    $0x6,%sp
    3eaf:	eb 29                	jmp    0x3eda
    3eb1:	8b 1e 16 7d          	mov    0x7d16,%bx
    3eb5:	d1 e3                	shl    $1,%bx
    3eb7:	8b 87 57 7d          	mov    0x7d57(%bx),%ax
    3ebb:	a3 00 00             	mov    %ax,0x0
    3ebe:	a1 00 00             	mov    0x0,%ax
    3ec1:	40                   	inc    %ax
    3ec2:	a3 02 00             	mov    %ax,0x2
    3ec5:	ff 36 00 00          	push   0x0
    3ec9:	ff 36 16 7d          	push   0x7d16
    3ecd:	1e                   	push   %ds
    3ece:	b8 4c 7f             	mov    $0x7f4c,%ax
    3ed1:	50                   	push   %ax
    3ed2:	9a 17 2d 00 00       	lcall  $0x0,$0x2d17
    3ed7:	83 c4 08             	add    $0x8,%sp
    3eda:	e9 0d 01             	jmp    0x3fea
    3edd:	1e                   	push   %ds
    3ede:	b8 7f 7f             	mov    $0x7f7f,%ax
    3ee1:	50                   	push   %ax
    3ee2:	ff 36 51 7d          	push   0x7d51
    3ee6:	ff 36 4f 7d          	push   0x7d4f
    3eea:	9a b8 34 00 00       	lcall  $0x0,$0x34b8
    3eef:	83 c4 08             	add    $0x8,%sp
    3ef2:	0b c2                	or     %dx,%ax
    3ef4:	74 76                	je     0x3f6c
    3ef6:	1e                   	push   %ds
    3ef7:	b8 16 7d             	mov    $0x7d16,%ax
    3efa:	50                   	push   %ax
    3efb:	1e                   	push   %ds
    3efc:	b8 83 7f             	mov    $0x7f83,%ax
    3eff:	50                   	push   %ax
    3f00:	ff 36 51 7d          	push   0x7d51
    3f04:	ff 36 4f 7d          	push   0x7d4f
    3f08:	9a 90 33 00 00       	lcall  $0x0,$0x3390
    3f0d:	83 c4 0c             	add    $0xc,%sp
    3f10:	83 3e 16 7d 04       	cmpw   $0x4,0x7d16
    3f15:	7e 25                	jle    0x3f3c
    3f17:	a1 16 7d             	mov    0x7d16,%ax
    3f1a:	05 04 00             	add    $0x4,%ax
    3f1d:	a3 00 00             	mov    %ax,0x0
    3f20:	a1 00 00             	mov    0x0,%ax
    3f23:	05 02 00             	add    $0x2,%ax
    3f26:	a3 02 00             	mov    %ax,0x2
    3f29:	ff 36 00 00          	push   0x0
    3f2d:	1e                   	push   %ds
    3f2e:	b8 89 7f             	mov    $0x7f89,%ax
    3f31:	50                   	push   %ax
    3f32:	9a 17 2d 00 00       	lcall  $0x0,$0x2d17
    3f37:	83 c4 06             	add    $0x6,%sp
    3f3a:	eb 2e                	jmp    0x3f6a
    3f3c:	8b 1e 16 7d          	mov    0x7d16,%bx
    3f40:	d1 e3                	shl    $1,%bx
    3f42:	8b 87 5f 7d          	mov    0x7d5f(%bx),%ax
    3f46:	05 04 00             	add    $0x4,%ax
    3f49:	a3 00 00             	mov    %ax,0x0
    3f4c:	a1 00 00             	mov    0x0,%ax
    3f4f:	05 02 00             	add    $0x2,%ax
    3f52:	a3 02 00             	mov    %ax,0x2
    3f55:	ff 36 00 00          	push   0x0
    3f59:	ff 36 16 7d          	push   0x7d16
    3f5d:	1e                   	push   %ds
    3f5e:	b8 c2 7f             	mov    $0x7fc2,%ax
    3f61:	50                   	push   %ax
    3f62:	9a 17 2d 00 00       	lcall  $0x0,$0x2d17
    3f67:	83 c4 08             	add    $0x8,%sp
    3f6a:	eb 7e                	jmp    0x3fea
    3f6c:	1e                   	push   %ds
    3f6d:	b8 16 7d             	mov    $0x7d16,%ax
    3f70:	50                   	push   %ax
    3f71:	1e                   	push   %ds
    3f72:	b8 f5 7f             	mov    $0x7ff5,%ax
    3f75:	50                   	push   %ax
    3f76:	ff 36 51 7d          	push   0x7d51
    3f7a:	ff 36 4f 7d          	push   0x7d4f
    3f7e:	9a 90          	lcall  $0x0,$0x3390
