assume cs:codesg,ds:datasg,ss:stacksg
datasg segment
           db 'hello world'
           dw 123H,345H,789H,0abcH,0defH
           db 3 dup(1,2,3)
           db 3 dup('abc','def')
datasg ends
stacksg segment
            db 10 dup(0)
stacksg ends
codesg segment
    start: 
           mov  ax,3
           mov  cx,11
           call s
           inc  bx
           inc  bx
           int  21H
    s:     add  ax,ax
           loop s
codesg ends
end start   ; 不能只写end，否则cs寄存器不会正确被设置到codesg的段地址，而是默认从头开始