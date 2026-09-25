; S8.EXE protocol routines -- annotated linear disassembly
; Image offsets are relative to the loaded image (MZ header excluded).
; Original binary SHA-256: 7d45c7e47783b73047ccf416fffbf7e32087b00f5ab9e76fb39f84f4e811c05c

; ------------------------------------------------------------------
; Put82 @ 0x37ED
    37ed:	55                   	push   %bp
    37ee:	8b ec                	mov    %sp,%bp
    37f0:	56                   	push   %si
    37f1:	1e                   	push   %ds
    37f2:	b8 a4 04             	mov    $0x4a4,%ax
    37f5:	8e d8                	mov    %ax,%ds
    37f7:	80 3e 0f 7d 00       	cmpb   $0x0,0x7d0f
    37fc:	74 16                	je     0x3814
    37fe:	8a 46 06             	mov    0x6(%bp),%al
    3801:	50                   	push   %ax
    3802:	ff 36 55 7d          	push   0x7d55
    3806:	ff 36 53 7d          	push   0x7d53
    380a:	9a 6d 00 09 04       	lcall  $0x409,$0x6d
    380f:	83 c4 06             	add    $0x6,%sp
    3812:	eb 63                	jmp    0x3877
    3814:	33 f6                	xor    %si,%si
    3816:	eb 5a                	jmp    0x3872
    3818:	f6 46 06 01          	testb  $0x1,0x6(%bp)
    381c:	74 29                	je     0x3847
    381e:	8b 16 00 00          	mov    0x0,%dx
    3822:	b0 02                	mov    $0x2,%al
    3824:	ee                   	out    %al,(%dx)
    3825:	eb 00                	jmp    0x3827
    3827:	8b 16 02 00          	mov    0x2,%dx
    382b:	ec                   	in     (%dx),%al
    382c:	b4 00                	mov    $0x0,%ah
    382e:	a9 10 00             	test   $0x10,%ax
    3831:	75 f4                	jne    0x3827
    3833:	8b 16 00 00          	mov    0x0,%dx
    3837:	b0 03                	mov    $0x3,%al
    3839:	ee                   	out    %al,(%dx)
    383a:	eb 00                	jmp    0x383c
    383c:	8b 16 02 00          	mov    0x2,%dx
    3840:	ec                   	in     (%dx),%al
    3841:	a8 10                	test   $0x10,%al
    3843:	74 f7                	je     0x383c
    3845:	eb 27                	jmp    0x386e
    3847:	8b 16 00 00          	mov    0x0,%dx
    384b:	b0 01                	mov    $0x1,%al
    384d:	ee                   	out    %al,(%dx)
    384e:	eb 00                	jmp    0x3850
    3850:	8b 16 02 00          	mov    0x2,%dx
    3854:	ec                   	in     (%dx),%al
    3855:	b4 00                	mov    $0x0,%ah
    3857:	a9 20 00             	test   $0x20,%ax
    385a:	75 f4                	jne    0x3850
    385c:	8b 16 00 00          	mov    0x0,%dx
    3860:	b0 03                	mov    $0x3,%al
    3862:	ee                   	out    %al,(%dx)
    3863:	eb 00                	jmp    0x3865
    3865:	8b 16 02 00          	mov    0x2,%dx
    3869:	ec                   	in     (%dx),%al
    386a:	a8 20                	test   $0x20,%al
    386c:	74 f7                	je     0x3865
    386e:	d0 7e 06             	sarb   $1,0x6(%bp)
    3871:	46                   	inc    %si
    3872:	83 fe 08             	cmp    $0x8,%si
    3875:	7c a1                	jl     0x3818
    3877:	1f                   	pop    %ds
    3878:	5e                   	pop    %si
    3879:	5d                   	pop    %bp
    387a:	cb                   	lret
    387b:	55                   	push   %bp
    387c:	8b ec                	mov    %sp,%bp
    387e:	83 ec 04             	sub    $0x4,%sp
    3881:	56                   	push   %si
    3882:	1e                   	push   %ds
    3883:	b8 a4 04             	mov    $0x4a4,%ax
    3886:	8e d8                	mov    %ax,%ds
    3888:	c6 46 ff 00          	movb   $0x0,-0x1(%bp)
    388c:	80 3e 0f 7d 00       	cmpb   $0x0,0x7d0f
    3891:	74 36                	je     0x38c9
    3893:	eb 00                	jmp    0x3895
    3895:	ff 36 55 7d          	push   0x7d55
    3899:	ff 36 53 7d          	push   0x7d53
    389d:	9a 0f 04 09 04       	lcall  $0x409,$0x40f
    38a2:	59                   	pop    %cx
    38a3:	59                   	pop    %cx
    38a4:	0b c0                	or     %ax,%ax
    38a6:	74 ed                	je     0x3895
    38a8:	8a 46 ff             	mov    -0x1(%bp),%al
    38ab:	88 46 fd             	mov    %al,-0x3(%bp)
    38ae:	8d 46 fd             	lea    -0x3(%bp),%ax
    38b1:	16                   	push   %ss
    38b2:	50                   	push   %ax
    38b3:	ff 36 55 7d          	push   0x7d55
    38b7:	ff 36 53 7d          	push   0x7d53
    38bb:	9a ef 01 09 04       	lcall  $0x409,$0x1ef
    38c0:	83 c4 08             	add    $0x8,%sp
    38c3:	8a 46 ff             	mov    -0x1(%bp),%al
    38c6:	e9 84 00             	jmp    0x394d
    38c9:	33 f6                	xor    %si,%si
    38cb:	eb 78                	jmp    0x3945
    38cd:	eb 00                	jmp    0x38cf
    38cf:	8b 16 02 00          	mov    0x2,%dx
    38d3:	ec                   	in     (%dx),%al
    38d4:	24 30                	and    $0x30,%al
    38d6:	88 46 fe             	mov    %al,-0x2(%bp)
    38d9:	3c 30                	cmp    $0x30,%al
    38db:	74 f2                	je     0x38cf
    38dd:	80 7e fe 10          	cmpb   $0x10,-0x2(%bp)
    38e1:	75 20                	jne    0x3903
    38e3:	8a 46 ff             	mov    -0x1(%bp),%al
    38e6:	b4 00                	mov    $0x0,%ah
    38e8:	d1 f8                	sar    $1,%ax
    38ea:	0c 80                	or     $0x80,%al
    38ec:	88 46 ff             	mov    %al,-0x1(%bp)
    38ef:	8b 16 00 00          	mov    0x0,%dx
    38f3:	b0 01                	mov    $0x1,%al
    38f5:	ee                   	out    %al,(%dx)
    38f6:	eb 00                	jmp    0x38f8
    38f8:	8b 16 02 00          	mov    0x2,%dx
    38fc:	ec                   	in     (%dx),%al
    38fd:	a8 20                	test   $0x20,%al
    38ff:	74 f7                	je     0x38f8
    3901:	eb 1c                	jmp    0x391f
    3903:	8a 46 ff             	mov    -0x1(%bp),%al
    3906:	b4 00                	mov    $0x0,%ah
    3908:	d1 f8                	sar    $1,%ax
    390a:	88 46 ff             	mov    %al,-0x1(%bp)
    390d:	8b 16 00 00          	mov    0x0,%dx
    3911:	b0 02                	mov    $0x2,%al
    3913:	ee                   	out    %al,(%dx)
    3914:	eb 00                	jmp    0x3916
    3916:	8b 16 02 00          	mov    0x2,%dx
    391a:	ec                   	in     (%dx),%al
    391b:	a8 10                	test   $0x10,%al
    391d:	74 f7                	je     0x3916
    391f:	c6 46 fe ff          	movb   $0xff,-0x2(%bp)
    3923:	eb 0a                	jmp    0x392f
    3925:	fe 4e fe             	decb   -0x2(%bp)
    3928:	8b 16 00 00          	mov    0x0,%dx
    392c:	b0 03                	mov    $0x3,%al
    392e:	ee                   	out    %al,(%dx)
    392f:	8b 16 02 00          	mov    0x2,%dx
    3933:	ec                   	in     (%dx),%al
    3934:	b4 00                	mov    $0x0,%ah
    3936:	25 30 00             	and    $0x30,%ax
    3939:	3d 30 00             	cmp    $0x30,%ax
    393c:	74 06                	je     0x3944
    393e:	80 7e fe 00          	cmpb   $0x0,-0x2(%bp)
    3942:	75 e1                	jne    0x3925
    3944:	46                   	inc    %si
    3945:	83 fe 08             	cmp    $0x8,%si
    3948:	7c 83                	jl     0x38cd
    394a:	e9 76 ff             	jmp    0x38c3
    394d:	1f                   	pop    %ds
    394e:	5e                   	pop    %si
    394f:	8b e5                	mov    %bp,%sp
    3951:	5d                   	pop    %bp
    3952:	cb                   	lret
    3953:	55                   	push   %bp
    3954:	8b ec                	mov    %sp,%bp
    3956:	56                   	push   %si
    3957:	57                   	push   %di
    3958:	1e                   	push   %ds
    3959:	b8 a4 04             	mov    $0x4a4,%ax
    395c:	8e d8                	mov    %ax,%ds
    395e:	8b 7e 0c             	mov    0xc(%bp),%di
    3961:	0b ff                	or     %di,%di
    3963:	74 0c                	je     0x3971
    3965:	1e                   	push   %ds
    3966:	b8 79 7d             	mov    $0x7d79,%ax
    3969:	50                   	push   %ax
    396a:	9a 17 2d 00 00       	lcall  $0x0,$0x2d17
    396f:	59                   	pop    %cx
    3970:	59                   	pop    %cx
    3971:	33 f6                	xor    %si,%si
    3973:	eb 40                	jmp    0x39b5
    3975:	c4 5e 06             	les    0x6(%bp),%bx
    3978:	03 de                	add    %si,%bx
    397a:	26 8a 07             	mov    %es:(%bx),%al
    397d:	50                   	push   %ax

; ------------------------------------------------------------------
; Get82 @ 0x387B
    397e:	0e                   	push   %cs
    397f:	e8 6b fe             	call   0x37ed
    3982:	59                   	pop    %cx
    3983:	0b ff                	or     %di,%di
    3985:	74 2d                	je     0x39b4
    3987:	8b 46 0a             	mov    0xa(%bp),%ax
    398a:	99                   	cwtd
    398b:	52                   	push   %dx
    398c:	50                   	push   %ax
    398d:	8b c6                	mov    %si,%ax
    398f:	99                   	cwtd
    3990:	50                   	push   %ax
    3991:	52                   	push   %dx
    3992:	33 d2                	xor    %dx,%dx
    3994:	b8 64 00             	mov    $0x64,%ax
    3997:	59                   	pop    %cx
    3998:	5b                   	pop    %bx
    3999:	9a 46 04 00 00       	lcall  $0x0,$0x446
    399e:	52                   	push   %dx
    399f:	50                   	push   %ax
    39a0:	9a b7 04 00 00       	lcall  $0x0,$0x4b7
    39a5:	52                   	push   %dx
    39a6:	50                   	push   %ax
    39a7:	1e                   	push   %ds
    39a8:	b8 7d 7d             	mov    $0x7d7d,%ax
    39ab:	50                   	push   %ax
    39ac:	9a 17 2d 00 00       	lcall  $0x0,$0x2d17
    39b1:	83 c4 08             	add    $0x8,%sp
    39b4:	46                   	inc    %si
    39b5:	3b 76 0a             	cmp    0xa(%bp),%si
    39b8:	7c bb                	jl     0x3975
    39ba:	0b ff                	or     %di,%di
    39bc:	74 0c                	je     0x39ca
    39be:	1e                   	push   %ds
    39bf:	b8 89 7d             	mov    $0x7d89,%ax
    39c2:	50                   	push   %ax
    39c3:	9a 17 2d 00 00       	lcall  $0x0,$0x2d17
    39c8:	59                   	pop    %cx
    39c9:	59                   	pop    %cx
    39ca:	1f                   	pop    %ds
    39cb:	5f                   	pop    %di
    39cc:	5e                   	pop    %si
    39cd:	5d                   	pop    %bp
    39ce:	cb                   	lret
    39cf:	55                   	push   %bp
    39d0:	8b ec                	mov    %sp,%bp
    39d2:	56                   	push   %si
    39d3:	1e                   	push   %ds
    39d4:	b8 a4 04             	mov    $0x4a4,%ax
    39d7:	8e d8                	mov    %ax,%ds
    39d9:	33 f6                	xor    %si,%si
    39db:	eb 0e                	jmp    0x39eb
    39dd:	0e                   	push   %cs
    39de:	e8 9a fe             	call   0x387b
    39e1:	c4 5e 06             	les    0x6(%bp),%bx
    39e4:	26 88 07             	mov    %al,%es:(%bx)
    39e7:	ff 46 06             	incw   0x6(%bp)
    39ea:	46                   	inc    %si
    39eb:	3b 76 0a             	cmp    0xa(%bp),%si
    39ee:	7c ed                	jl     0x39dd

; ------------------------------------------------------------------
; PutBytes @ 0x3953 and GetBytes @ 0x39CF
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

; ------------------------------------------------------------------
; SendFile @ 0x39F4
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

; ------------------------------------------------------------------
; main @ 0x3D81
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
    3f7e:	9a 90 33 00 00       	lcall  $0x0,$0x3390
    3f83:	83 c4 0c             	add    $0xc,%sp
    3f86:	83 3e 16 7d 01       	cmpw   $0x1,0x7d16
    3f8b:	7c 07                	jl     0x3f94
    3f8d:	83 3e 16 7d 04       	cmpw   $0x4,0x7d16
    3f92:	7e 15                	jle    0x3fa9
    3f94:	1e                   	push   %ds
    3f95:	b8 f9 7f             	mov    $0x7ff9,%ax
    3f98:	50                   	push   %ax
    3f99:	9a 17 2d 00 00       	lcall  $0x0,$0x2d17
    3f9e:	59                   	pop    %cx
    3f9f:	59                   	pop    %cx
    3fa0:	33 c0                	xor    %ax,%ax
    3fa2:	50                   	push   %ax
    3fa3:	9a ef 03 00 00       	lcall  $0x0,$0x3ef
    3fa8:	59                   	pop    %cx
    3fa9:	b8 01 00             	mov    $0x1,%ax
    3fac:	50                   	push   %ax
    3fad:	b8 08 00             	mov    $0x8,%ax
    3fb0:	50                   	push   %ax
    3fb1:	33 c0                	xor    %ax,%ax
    3fb3:	50                   	push   %ax
    3fb4:	33 c0                	xor    %ax,%ax
    3fb6:	ba 80 25             	mov    $0x2580,%dx
    3fb9:	50                   	push   %ax
    3fba:	52                   	push   %dx
    3fbb:	ff 36 16 7d          	push   0x7d16
    3fbf:	33 c0                	xor    %ax,%ax
    3fc1:	33 d2                	xor    %dx,%dx
    3fc3:	50                   	push   %ax
    3fc4:	52                   	push   %dx
    3fc5:	9a 83 07 09 04       	lcall  $0x409,$0x783
    3fca:	83 c4 10             	add    $0x10,%sp
    3fcd:	89 16 55 7d          	mov    %dx,0x7d55
    3fd1:	a3 53 7d             	mov    %ax,0x7d53
    3fd4:	c6 06 0f 7d 01       	movb   $0x1,0x7d0f
    3fd9:	ff 36 16 7d          	push   0x7d16
    3fdd:	1e                   	push   %ds
    3fde:	b8 2b 80             	mov    $0x802b,%ax
    3fe1:	50                   	push   %ax
    3fe2:	9a 17 2d 00 00       	lcall  $0x0,$0x2d17
    3fe7:	83 c4 06             	add    $0x6,%sp
    3fea:	8b 16 00 00          	mov    0x0,%dx
    3fee:	b0 03                	mov    $0x3,%al
    3ff0:	ee                   	out    %al,(%dx)
    3ff1:	33 c0                	xor    %ax,%ax
    3ff3:	50                   	push   %ax
    3ff4:	1e                   	push   %ds
    3ff5:	b8 20 7d             	mov    $0x7d20,%ax
    3ff8:	50                   	push   %ax
    3ff9:	c4 5e 08             	les    0x8(%bp),%bx
    3ffc:	26 ff 77 06          	push   %es:0x6(%bx)
    4000:	26 ff 77 04          	push   %es:0x4(%bx)
    4004:	9a d2 21 00 00       	lcall  $0x0,$0x21d2
    4009:	83 c4 0a             	add    $0xa,%sp
    400c:	eb 1a                	jmp    0x4028
    400e:	1e                   	push   %ds
    400f:	b8 3e 7d             	mov    $0x7d3e,%ax
    4012:	50                   	push   %ax
    4013:	0e                   	push   %cs
    4014:	e8 dd f9             	call   0x39f4
    4017:	59                   	pop    %cx
    4018:	59                   	pop    %cx
    4019:	1e                   	push   %ds
    401a:	b8 20 7d             	mov    $0x7d20,%ax
    401d:	50                   	push   %ax
    401e:	9a 0c 22 00 00       	lcall  $0x0,$0x220c
    4023:	59                   	pop    %cx
    4024:	59                   	pop    %cx
    4025:	a3 1a 7d             	mov    %ax,0x7d1a
    4028:	83 3e 1a 7d 00       	cmpw   $0x0,0x7d1a
    402d:	74 df                	je     0x400e
    402f:	83 3e 1c 7d 03       	cmpw   $0x3,0x7d1c
    4034:	74 39                	je     0x406f
    4036:	a0 0e 7d             	mov    0x7d0e,%al
    4039:	50                   	push   %ax
    403a:	0e                   	push   %cs
    403b:	e8 af f7             	call   0x37ed
    403e:	59                   	pop    %cx
    403f:	b0 92                	mov    $0x92,%al
    4041:	50                   	push   %ax
    4042:	0e                   	push   %cs
    4043:	e8 a7 f7             	call   0x37ed
    4046:	59                   	pop    %cx
    4047:	b0 00                	mov    $0x0,%al
    4049:	50                   	push   %ax
    404a:	0e                   	push   %cs
    404b:	e8 9f f7             	call   0x37ed
    404e:	59                   	pop    %cx
    404f:	b0 00                	mov    $0x0,%al
    4051:	50                   	push   %ax
    4052:	0e                   	push   %cs
    4053:	e8 97 f7             	call   0x37ed
    4056:	59                   	pop    %cx
    4057:	b8 04 00             	mov    $0x4,%ax
    405a:	50                   	push   %ax
    405b:	1e                   	push   %ds
    405c:	b8 04 7d             	mov    $0x7d04,%ax
    405f:	50                   	push   %ax
    4060:	0e                   	push   %cs
    4061:	e8 6b f9             	call   0x39cf
    4064:	83 c4 06             	add    $0x6,%sp
    4067:	b0 00                	mov    $0x0,%al
    4069:	50                   	push   %ax
    406a:	0e                   	push   %cs
    406b:	e8 7f f7             	call   0x37ed
    406e:	59                   	pop    %cx
    406f:	1e                   	push   %ds
    4070:	b8 5c 80             	mov    $0x805c,%ax
    4073:	50                   	push   %ax
    4074:	9a 17 2d 00 00       	lcall  $0x0,$0x2d17
    4079:	59                   	pop    %cx
    407a:	59                   	pop    %cx
    407b:	a1 53 7d             	mov    0x7d53,%ax
    407e:	0b 06 55 7d          	or     0x7d55,%ax
