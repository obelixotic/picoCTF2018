.intel_syntax noprefix
.bits 32

.global asm1

;asm1(0xc8)

asm1:
	push	ebp
	mov	ebp,esp
	cmp	DWORD PTR [ebp+0x8],0x9a ;compare 0xc8 with 0x9a
	jg 	part_a									;if 0xc8 > 0x9a, go to part_a
	cmp	DWORD PTR [ebp+0x8],0x8
	jne	part_b
	mov	eax,DWORD PTR [ebp+0x8]
	add	eax,0x3
	jmp	part_d
part_a:
	cmp	DWORD PTR [ebp+0x8],0x2c ;compare 0xc8 with 0x9a
	jne	part_c									;if 0xc8 != 0x2c, go to part_c
	mov	eax,DWORD PTR [ebp+0x8]
	sub	eax,0x3
	jmp	part_d
part_b:
	mov	eax,DWORD PTR [ebp+0x8]
	sub	eax,0x3
	jmp	part_d
	cmp	DWORD PTR [ebp+0x8],0xc8
	jne	part_c
	mov	eax,DWORD PTR [ebp+0x8]
	sub	eax,0x3
	jmp	part_d
part_c:
	mov	eax,DWORD PTR [ebp+0x8]
	add	eax,0x3									;0xc8 + 0x3
part_d:
	pop	ebp
	ret													;return hex(0xc8+0x3) = 0xcb (flag)
