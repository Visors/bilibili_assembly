assume cs:codesg
codesg segment
           mov ax,0H
           mov ds,ax
           mov byte ptr ds:[5678H], 0FFH
    ;    mov [5678H], 0FFH
    ;    mov [5678H], 0xFFH
           INT 21H
codesg ends
end
