" set cursor shape for insert and normal mode (required when setting the cursor
" shape in zsh)
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"

" prevent weird characters to appear
let &t_TI = ""
let &t_TE = ""
