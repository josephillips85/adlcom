; Code for initialize serial port for com1 
;; use Fasm for linking and compiling
; This is a temporaly solution for initialize the UART to 115200

;format MZ 
org 100h

mov dx,message
mov ah,09h
int 21h




mov dx,0x3F8
inc dx
mov al,0x00
out dx,al 

inc dx
inc dx
mov al,0x80
out dx,al

dec dx
dec dx
dec dx
mov al,0x01
out dx,al

inc dx ; +1
mov al,0x00
out dx,al 

inc dx 
inc dx
mov al,0x03
out dx,al

dec dx ; original address +2
mov al,0xC7
out dx,al

inc dx
inc dx
mov al,0x0B
out dx,al

dec dx
dec dx
dec dx
dec dx

mov ax,4c00h
int 21h

message: db 'UART 16650 COM1 Initialized!$'
