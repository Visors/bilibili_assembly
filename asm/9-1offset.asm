assume cs:codesg
codesg segment
    s:     
           mov ax,bx
           mov si,offset s
           mov di,offset s0
           mov dx,cs:[si]
           mov cs:[di],dx
    s0:    
           nop
           nop
codesg ends
end s

; -u
; 0B68:0000 8BC3          MOV     AX,BX
; 0B68:0002 BE0000        MOV     SI,0000
; 0B68:0005 BF0E00        MOV     DI,000E
; 0B68:0008 2E            CS:
; 0B68:0009 8B14          MOV     DX,[SI]
; 0B68:000B 2E            CS:
; 0B68:000C 8915          MOV     [DI],DX
; 0B68:000E 90            NOP               ; 注意看这里是两个 nop
; 0B68:000F 90            NOP
; 0B68:0010 C0            DB      C0
; 0B68:0011 7577          JNZ     008A
; 0B68:0013 FE867AFF      INC     BYTE PTR [BP+FF7A]
; 0B68:0017 8A867AFF      MOV     AL,[BP+FF7A]
; 0B68:001B 2AE4          SUB     AH,AH
; 0B68:001D 8BF0          MOV     SI,AX
; 0B68:001F 88A27AFF      MOV     [BP+SI+FF7A],AH
; -

; -u 0b68:0
; 0B68:0000 8BC3          MOV     AX,BX
; 0B68:0002 BE0000        MOV     SI,0000
; 0B68:0005 BF0E00        MOV     DI,000E
; 0B68:0008 2E            CS:
; 0B68:0009 8B14          MOV     DX,[SI]
; 0B68:000B 2E            CS:
; 0B68:000C 8915          MOV     [DI],DX
; 0B68:000E 8BC3          MOV     AX,BX     ; 将 mov ax,bx 写入了预留的两个 nop 处
; 0B68:0010 C0            DB      C0
; 0B68:0011 7577          JNZ     008A
; 0B68:0013 FE867AFF      INC     BYTE PTR [BP+FF7A]
; 0B68:0017 8A867AFF      MOV     AL,[BP+FF7A]
; 0B68:001B 2AE4          SUB     AH,AH
; 0B68:001D 8BF0          MOV     SI,AX
; 0B68:001F 88A27AFF      MOV     [BP+SI+FF7A],AH
; -