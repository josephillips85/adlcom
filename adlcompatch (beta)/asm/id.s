; arguments in [bp+6], [bp+8]
; id Software variation
; add a delay please check adlib documentation for details
; increment the cmp to add delay

        %if __BITS__ != 16
        %error This file is intended for 16-bit code
        %endif

        pushf
        cli

        mov dx, PORT
        mov al, [bp+6]
        out dx, al

        mov cx, 0
L1:     inc cx
        cmp cx, 100
        jne L1

        mov al, [bp+8]
        out dx, al

        mov cx, 0
L2:     inc cx
        cmp cx, 100
        jne L2

        popf

        push cx
        mov cx, 35
L3:     in al, dx
        loop L3
        pop cx
