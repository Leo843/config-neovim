" spell checking language
set spelllang=en

" file for custom entries
let &spellfile= stdpath('config') . "/spellcheck/en.utf-8.add"

" toggle spell checking
nnoremap <F9> :set spell!<CR>

" use underline in terminal and undercurl in gui
augroup SpellUnderline
  autocmd!
  autocmd ColorScheme *
        \ highlight SpellBad
        \   cterm=Underline
        \   ctermfg=1
        \   ctermbg=NONE
        \   term=Reverse
        \   gui=Undercurl
        \   guisp=Red
  autocmd ColorScheme *
        \ highlight SpellCap
        \   cterm=Underline
        \   ctermfg=1
        \   ctermbg=NONE
        \   term=Reverse
        \   gui=Undercurl
        \   guisp=Red
  autocmd ColorScheme *
        \ highlight SpellLocal
        \   cterm=Underline
        \   ctermfg=1
        \   ctermbg=NONE
        \   term=Reverse
        \   gui=Undercurl
        \   guisp=Red
  autocmd ColorScheme *
        \ highlight SpellRare
        \   cterm=Underline
        \   ctermfg=1
        \   ctermbg=NONE
        \   term=Reverse
        \   gui=Undercurl
        \   guisp=Red
augroup END

" TODO to load the new highlight, background has to be set (workaround)
let s:bg=&background
let &background=s:bg
