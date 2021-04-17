model	small
extrn   square: far
public	n
.stack	256
.data
n	dw	100
.code
main	proc	near
        mov	ax, @data  
        mov	ds, ax
        mov	ax, 0012h
        int	10h
        mov	ah, 0ch
        mov	al, 00001100b
        mov	bx, 0
        push	100
        push	200
        push	n
        call    square
        mov	al, 00001001b 
        push	175
        push	125
        push	n
        call    square
        mov       al, 00001010b
        push	175
        push	275
        push	n
        call    square
        mov	al, 00001110b
        push	250
        push	200
        push	n
        call    square
        mov	ah, 10h
        int	16h
        mov	ax, 0003h
        int	10h
        mov	ax, 4c00h
        int	21h
main	endp
        end	main
