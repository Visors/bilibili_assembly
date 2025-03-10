codesg segment
           assume cs:codesg
           org    100H
    start: mov    ax, $
           mov    ah, 0CH
           int    21H
codesg ends
end start