datasg segment
    str    db "hello$"    ; 之所以字符串要以$结尾
    ; 是因为int 21h处理09h之类的调用时将$视为字符串结尾
    ; 如果不设置结尾，调用会一直处理到遇到$为止，通常来说会导致预期之外的结果
    ; 但特别需要注意，$会占用1B空间
datasg ends
codesg segment
           assume cs:codesg,ds:datasg
    start: 
           mov    bx, datasg
           mov    ds, bx
           mov    ax, lengthof str
           mov    ah,09H
           lea    dx, str
           int    21H
           mov    ah, 4Ch
           int    21h
codesg ends
end start