assume cs:code, ds:data
data segment
list db 53h,05h,27h,38h,43h,87h
count dw 06h
data ends
code segment
start:
mov ax,data
mov ds,ax
mov cx,0000
mov dx,0000
mov dx,05h
again:mov si, 0
      mov cx, dx
back:mov al,[si]
     cmp al,[si+1]
     jnc next
     xchg al,[si+1]
     mov [si],al
next:inc si
     loop back
     dec dx
     jnz again
     int 03h
code ends
end start

