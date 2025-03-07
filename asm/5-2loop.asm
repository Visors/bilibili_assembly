assume cs:codesg
codesg segment
              mov  ax, 2
              mov  cx, 11
              
       s:     add  ax,ax
              loop s

              int  21H
codesg ends
end