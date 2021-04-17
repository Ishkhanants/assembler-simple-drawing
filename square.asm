model	small
.stack	256
extrn	n
public	square
.data
.code
square	proc	far
	push	bp
	mov     bp, sp
        mov     si, [ss:bp+6]
        mov     dx, [ss:bp+8]
        mov     cx, [ss:bp+10]

k:	int	10h
	inc	cx
	dec	si
	jnz	k
        mov     si, [ss:bp+6]

k1:	int	10h
	inc	dx
	dec	si
	jnz	k1
        mov     si, [ss:bp+6]

k2:	int	10h
	dec	cx
	dec	si
	jnz	k2 
        mov     si, [ss:bp+6]

k3:	int	10h
	dec	dx
	dec	si
	jnz	k3
	pop 	bp
	ret
square	endp
	end	square
